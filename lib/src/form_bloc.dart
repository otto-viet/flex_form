import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flex_form/src/form_view_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:collection/collection.dart';

import 'form_field_id.dart';
import 'form_field_validation.dart';
import 'form_field_config.dart';
import 'form_input_data_mapper.dart';
import 'form_providers.dart';

part 'form_bloc.freezed.dart';

class _FormValidationProvider extends FormValidationProvider<FormDataEntity> {
  _FormValidationProvider(
      {required super.inputConfigMap, required super.inputDataMapper});
}

/// A BLoC implementation for a form with TextInput components.
class FormBloc extends Bloc<FormEvent, FormBlocState> {
  FormBloc(
    FormBlocState initialState, {
    FormValidationProvider<FormDataEntity>? formValidationProvider,
    required this.inputDataMapper,
    required this.inputConfigMap,
    this.dataProvider,
    this.requiredLoad = false,
    this.requiresChangesOnSubmission = true,
  })  : validationProvider = formValidationProvider ??
            _FormValidationProvider(
                inputConfigMap: inputConfigMap,
                inputDataMapper: inputDataMapper),
        super(initialState.copyWith(isContentLoaded: !requiredLoad)) {
    on<FormEvent>(_onEvent, transformer: sequential());
    _initializeDataInputMapWithMapData(dataProvider?.data);
  }

  final bool requiredLoad;
  final bool requiresChangesOnSubmission;
  final FormDataProvider? dataProvider;
  final FormValidationProvider<FormDataEntity> validationProvider;
  final FormInputDataMapper<FormDataEntity> inputDataMapper;
  final Map<FormFieldId, FormFieldConfig> inputConfigMap;

  /// The client-specific entity assigned when a form is submitted and its data
  /// is stored in this entity.
  dynamic _savedEntity;

  /// The current map of the form's data to its [FormDataEntity].
  FormDataEntity? get formEntity =>
      inputDataMapper.toFormProviderEntity(_getInputData());
  dynamic get savedEntity => _savedEntity;
  FormDataEntity? get originalEntity =>
      inputDataMapper.toFormProviderEntity(dataProvider?.data);

  Future<void> _onEvent(
    FormEvent event,
    Emitter<FormBlocState> emitter,
  ) async =>
      switch (event) {
        _FormPerformActionStarted() =>
          _handleFormUpdating(event.eventAction, emitter),
        _FormValidateFieldStarted() => _handleFormValidation(emitter),
        _FormInitializeFormStarted() => _handleFormInitializing(
            emitter,
            initializeWithValidationErrors:
                event.initializeWithValidationErrors,
            isReinitializing: event.isReinitializing,
            formData: event.formData,
            entityId: event.entityId,
            title: event.title,
          ),
        _FormChangeInputStarted() => _handleFormInputChanging(
            event.fieldId,
            event.inputValue ?? '',
            emitter,
          ),
        _FormExitInputTapped() => _handleFormInputExiting(
            event.fieldId,
            event.inputValue ?? '',
            emitter,
          ),
        _FormSelectOptionTapped() =>
          _handleFormInputChanging(event.fieldId, event.value, emitter),
        _FormToggleInputTapped() =>
          _handleFormInputToggling(event.fieldId, emitter),
        _FormUpdateValidationStarted() =>
          _handleFormValidationUpdate(event.validationMap, emitter),
      };

  Future<Map<FormFieldId, String>?> _getFormValidationResults() async {
    final FormDataEntity? entity = inputDataMapper.toFormProviderEntity(
      _getInputData(),
    );

    if (entity == null) {
      return null;
    }

    return validationProvider.validateUponSubmission(
      entity,
      original: originalEntity,
    );
  }

  Future<void> _handleFormValidation(Emitter<FormBlocState> emit) async {
    final Map<FormFieldId, String>? validationMap =
        await _getFormValidationResults();

    // Not all [FormValidationProvider] implementations provide an
    // implementation for [validateUponSubmission] because not all of
    // them need to validate the form before submitting it.
    if (validationMap != null && validationMap.keys.isNotEmpty) {
      await _handleFormValidationUpdate(validationMap, emit);
    }
  }

  Future<void> _handleFormValidationUpdate(
    Map<FormFieldId, String> validationMap,
    Emitter<FormBlocState> emit,
  ) async {
    final Map<FormFieldId, InputViewModel> newInputMap =
        _updateInputMapWithValidationMap(
      state.data.inputMap,
      validationMap,
    );
    emit(
      state.copyWith(
        canRebuild: true,
        data: state.data.copyWith(inputMap: newInputMap),
        canSubmit: false,
        currentActionEvent: FormAction.validatingEntireForm,
        // Allows consecutive updates to be fired even though nothing has
        // changed in the form's validation status.
        lastStateUpdateTimeStamp: DateTime.now().millisecondsSinceEpoch,
      ),
    );
  }

  /// Handles other action-based events.
  Future<void> _handleFormUpdating(
    FormAction? eventAction,
    Emitter<FormBlocState> emit,
  ) async {
    switch (eventAction) {
      case FormAction.userInitiatingSubmission:
        // Validate the whole form to make sure all form inputs are valid
        // before updating.
        final Map<FormFieldId, String>? formValidationResult =
            await _getFormValidationResults();

        // Not all [FormValidationProvider] implementations provide an
        // implementation for [validateUponSubmission] because not all of
        // them need to validate the form before submitting it.
        if (formValidationResult?.keys.isNotEmpty ?? false) {
          add(FormEvent.updateValidationStarted(formValidationResult!));
        } else {
          emit(
            state.copyWith(
              canRebuild: true,
              canSubmit: false,
              currentActionEvent: FormAction.submissionInProgress,
            ),
          );

          // Submit the changes to the provider and get a result by mapping
          // the state's inputMap to a map that contains just the values to
          // be sent to the server. Note that this entity is different from
          // the FormProviderEntity used to map between the form and its data.
          dynamic entity;
          if (dataProvider != null) {
            try {
              entity = await dataProvider!.submit(_getInputData());
            } on Exception catch (error) {
              // If the saving is OK, let the UI component know so that it
              // can update its UI.
              emit(
                state.copyWith(
                  canRebuild: true,
                  canSubmit: false,
                  isFormDirty: false,
                  currentActionEvent: FormAction.submissionError,
                ),
              );

              addError(error);

              return;
            }
            _savedEntity = entity;
          }

          // If the saving is OK, let the UI component know so that it can
          // update its UI.
          emit(
            state.copyWith(
              canRebuild: true,
              canSubmit: false,
              isFormDirty: false,
              currentActionEvent: FormAction.submissionOK,
            ),
          );
        }

        break;
      case FormAction.userCancelingStarted:
        // Reset the form with the current provider.data
        _initializeDataInputMapWithMapData(dataProvider?.data);
        emit(
          state.copyWith(
            data: state.data.copyWith(inputMap: state.data.inputMap),
            isFormDirty: false,
            canSubmit: false,
            currentActionEvent: FormAction.cancelingOk,
          ),
        );
        break;
      default:
        emit(state.copyWith(currentActionEvent: eventAction));

        break;
    }
  }

  /// Handles the form's loading event.
  ///
  /// This bloc will use the [dataProvider] to load the data and save it in
  /// the provider's data property. It a form doesn't have a
  Future<void> _handleFormInitializing(
    Emitter<FormBlocState> emit, {
    bool initializeWithValidationErrors = false,
    bool isReinitializing = false,
    Map<FormFieldId, dynamic>? formData,
    dynamic entityId,
    String? title,
  }) async {
    if (!state.isContentLoaded || isReinitializing) {
      late bool isFormValid;

      emit(
        state.copyWith(
          canRebuild: true,
          currentActionEvent: FormAction.loadingInProgress,
        ),
      );

      // If a data provider was initialized, make sure its data is initialized
      // with the provided formData.
      if (dataProvider != null) {
        dataProvider?.data = <FormFieldId, dynamic>{};
        dataProvider!.entityId = entityId;

        if (formData != null) {
          dataProvider!.data = formData;
        } else {
          try {
            await dataProvider!.load();
          } on Exception catch (error) {
            addError(error);
          }
        }
      }

      isFormValid = (dataProvider?.data.isNotEmpty ?? false) &&
          await validationProvider.isValid(
            originalEntity!,
          );

      _clearDataInputMap();
      _initializeDataInputMapWithMapData(dataProvider?.data);

      // Update the state with the new view model and mark initialization
      // complete.
      // i.e. currentActionEvent: FormActionEvent.initializingComplete
      emit(
        state.copyWith(
          data: state.data.copyWith(
            inputMap: state.data.inputMap,
            title: title ?? state.data.title,
          ),
          canRebuild: true,
          isContentLoaded: true,
          currentActionEvent: FormAction.loadingComplete,
          isFormValid: isFormValid,
          canSubmit: isFormValid && !requiresChangesOnSubmission,
        ),
      );
    } else {
      bool isFormValid = (dataProvider?.data.isNotEmpty ?? false) &&
          await validationProvider.isValid(
            originalEntity!,
          );
      _initializeDataInputMapWithMapData(dataProvider?.data);
      Map<FormFieldId, InputViewModel> newInputMap = state.data.inputMap;

      if (initializeWithValidationErrors) {
        state.data.inputMap.forEach(
          (FormFieldId key, InputViewModel inputViewModel) =>
              switch (inputViewModel) {
            TextInputViewModel() => newInputMap[key] =
                  _createInputMapWithFieldValidation(
                key,
                inputViewModel.inputValue,
                isExitingField: true,
              )[key]!,
            SingleSelectInputViewModel() => newInputMap[key] =
                  _createInputMapWithFieldValidation(
                key,
                inputViewModel.value,
              )[key]!,
            MultipleSelectInputViewModel() => newInputMap[key] =
                  _createInputMapWithFieldValidation(
                key,
                inputViewModel.values,
              )[key]!,
            ToggledValueInputViewModel() => newInputMap[key] =
                  _createInputMapWithFieldValidation(
                key,
                inputViewModel.value,
              )[key]!,
            _ => null,
          },
        );

        final FormDataEntity? entity = inputDataMapper.toFormProviderEntity(
          dataProvider?.data,
        );
        final Map<FormFieldId, String>? validationMap =
            await validationProvider.validate(
          entity!,
          original: originalEntity,
        );
        isFormValid &= validationMap?.keys.isEmpty ?? true;

        if (validationMap?.isNotEmpty ?? false) {
          newInputMap =
              _updateInputMapWithValidationMap(newInputMap, validationMap!);
        }
      }

      // Need this to let the UI know to let the BLoC Consumer's listener to
      // take actions
      emit(
        state.copyWith(
          data: state.data.copyWith(
            title: title ?? state.data.title,
            inputMap: newInputMap,
          ),
          currentActionEvent: FormAction.loadingComplete,
          isFormValid: isFormValid,
          canSubmit: isFormValid && !requiresChangesOnSubmission,
        ),
      );
    }
  }

  /// Handles the onChange event of an input.
  Future<void> _handleFormInputChanging(
    FormFieldId fieldId,
    dynamic inputValue,
    Emitter<FormBlocState> emit,
  ) async {
    /// If the field needs to be validated as the user changes the value,
    /// run the validation right away. (Note: The events have been debounced
    /// to improve the performance.)
    if (state.inputConfigMap[fieldId] == null ||
        state.inputConfigMap[fieldId]!.validateOnExitingOnly != true) {
      Map<FormFieldId, InputViewModel> newInputMap =
          _createInputMapWithFieldValidation(fieldId, inputValue);

      // Parse the field inputs' values from the view model to check the form's
      // validity
      final Map<FormFieldId, dynamic> newInputData =
          newInputMap.map<FormFieldId, dynamic>(
        (
          FormFieldId key,
          InputViewModel inputViewModel,
        ) =>
            switch (inputViewModel) {
          TextInputViewModel() =>
            MapEntry<FormFieldId, dynamic>(key, inputViewModel.inputValue),
          SingleSelectInputViewModel() =>
            MapEntry<FormFieldId, dynamic>(key, inputViewModel.value),
          MultipleSelectInputViewModel() =>
            MapEntry<FormFieldId, dynamic>(key, inputViewModel.values),
          ToggledValueInputViewModel() =>
            MapEntry<FormFieldId, dynamic>(key, inputViewModel.value),
          _ => MapEntry<FormFieldId, dynamic>(key, null)
        },
      );

      final bool isFormDirty = validationProvider.isDirty(
        originalEntity,
        inputDataMapper.toFormProviderEntity(newInputData),
      );
      bool isFormValid = await validationProvider.isValid(
        inputDataMapper.toFormProviderEntity(newInputData)!,
      );

      // Check to see the field change requires the form to be validated again
      if (state.inputConfigMap[fieldId]?.validateFormOnChange ?? false) {
        final FormDataEntity? entity = inputDataMapper.toFormProviderEntity(
          newInputData,
        );

        late final Map<FormFieldId, String>? validationMap;

        validationMap = await validationProvider.validate(
          entity!,
          currentValidatedField: fieldId,
          original: originalEntity,
        );

        if (validationMap != null && validationMap.keys.isNotEmpty) {
          newInputMap =
              _updateInputMapWithValidationMap(newInputMap, validationMap);
          isFormValid = false;
        }
      }

      bool canSubmit = await _canSubmit(
        originalEntity,
        inputDataMapper.toFormProviderEntity(newInputData)!,
      );

      // Check to see if the form has previous errors
      canSubmit = canSubmit && !_checkForCurrentFieldError(newInputMap);

      // Set the Keyboard key to 'Go' to allow the user to submit.
      // NOTES:
      // 1. Currently, flutter doesn't update the button right away so this
      // might not be a complete experience.
      // 2. This functionality only applies to TextInput for now.
      switch (newInputMap[fieldId]) {
        case TextInputViewModel():
          newInputMap[fieldId] =
              (newInputMap[fieldId] as TextInputViewModel).copyWith(
            textInputAction:
                canSubmit ? TextInputAction.go : TextInputAction.done,
          );
          break;
        default:
          break;
      }

      // This supports fields that need to be highlighted (e.g. showing a
      // blue border) when the form is dirty. This brings attention to the user
      // about specific fields that need to be complete. (E.g. Enter password
      // to confirm changes.)
      // NOTE: This functionality only applies to TextInput for now.
      for (final FormFieldId element in newInputData.keys) {
        switch (newInputMap[element]) {
          case TextInputViewModel():
            if (state.inputConfigMap[element] != null) {
              newInputMap[element] =
                  (newInputMap[element] as TextInputViewModel).copyWith(
                isHighlighted: isFormDirty &&
                    state.inputConfigMap[element]!.highlightOnFormDirty,
              );
            }
            break;
          default:
            break;
        }
      }

      emit(
        state.copyWith(
          data: state.data.copyWith(inputMap: newInputMap),
          canRebuild: true,
          isFormDirty: isFormDirty,
          isFormValid: isFormValid,
          // Reset any previous event
          currentActionEvent: null,
          canSubmit: canSubmit,
        ),
      );
    } else {
      final Map<FormFieldId, InputViewModel> newInputMap =
          _createInputMapWithFieldValidation(
        fieldId,
        inputValue,
        isExitingField: true,
      );
      final bool isFormValid = await validationProvider.isValid(
        inputDataMapper.toFormProviderEntity(_getInputData())!,
      );

      emit(
        state.copyWith(
          data: state.data.copyWith(inputMap: newInputMap),
          canRebuild: false,
          currentActionEvent: null,
          isFormValid: isFormValid,
        ),
      );
    }
  }

  /// Handles then event when a user exit a form field after focusing on it.
  ///
  /// All of the field validation logics should already be handled by the
  /// FormFieldInputChanging event above. This is mainly to validate the whole
  /// form to get the validation message for each field. It does not check to
  /// see if the form can be submitted because it's already handled by the
  /// [_handleFormInputChanging] function.
  Future<void> _handleFormInputExiting(
    FormFieldId fieldId,
    String inputValue,
    Emitter<FormBlocState> emitter,
  ) async {
    if (state.currentActionEvent != FormAction.submissionInProgress) {
      // Validate the field that has just been exited.
      Map<FormFieldId, InputViewModel> newInputMap =
          _createInputMapWithFieldValidation(
        fieldId,
        inputValue.trim(),
        isExitingField: true,
      );

      // Parse the field inputs' values from the view model to check the form's
      // validity
      final Map<FormFieldId, dynamic> newInputData =
          newInputMap.map<FormFieldId, dynamic>(
        (FormFieldId key, InputViewModel viewModel) => switch (viewModel) {
          TextInputViewModel() => MapEntry<FormFieldId, dynamic>(
              key,
              viewModel.inputValue,
            ),
          SingleSelectInputViewModel() => MapEntry<FormFieldId, dynamic>(
              key,
              viewModel.value,
            ),
          MultipleSelectInputViewModel() => MapEntry<FormFieldId, dynamic>(
              key,
              viewModel.values,
            ),
          ToggledValueInputViewModel() => MapEntry<FormFieldId, dynamic>(
              key,
              viewModel.value,
            ),
          _ => MapEntry<FormFieldId, dynamic>(key, null),
        },
      );

      // Check to see if the form is dirty
      final bool isFormDirty = validationProvider.isDirty(
        originalEntity,
        inputDataMapper.toFormProviderEntity(newInputData),
      );

      // If form is dirty, we want to validate the whole form. This makes sure
      // all custom form validation logics are executed and update the inputs
      // with the corresponding message
      if (isFormDirty) {
        // In the "InputChanging" handler, we base canSubmit on
        // the field validation results. Also, by the time the user leaves
        // a field, the fields should already have errorText set according to
        // the FormFieldValidationType set. Therefore, we won't need to call
        // FormValidationProvider.canSubmit again when the user leaves a field
        // but rather depends on the error status of the fields after the
        // field has been validated again below.
        bool canSubmit = await _canSubmit(
          originalEntity,
          inputDataMapper.toFormProviderEntity(newInputData)!,
        );

        // Check to see if the current field's is valid. If it is, pass it
        // to the form's validator for any additional validation for the field
        final bool isCurrentFieldValid =
            newInputMap[fieldId]?.errorText?.isEmpty ?? true;
        // Call the form's validator to run validation against the form again
        final Map<FormFieldId, String>? formValidationMap =
            await validationProvider.validate(
          inputDataMapper.toFormProviderEntity(newInputData)!,
          currentValidatedField: isCurrentFieldValid ? fieldId : null,
          original: originalEntity,
        );

        // Check for null here because some forms don't provide the validation
        // above.
        if (formValidationMap != null && formValidationMap.isNotEmpty) {
          newInputMap =
              _updateInputMapWithValidationMap(newInputMap, formValidationMap);
          final hasValidationError = formValidationMap.values.firstWhereOrNull(
                (element) => element.isNotEmpty,
              ) !=
              null;

          if (hasValidationError) {
            canSubmit = false;
          } else {
            final newInputEntity =
                inputDataMapper.toFormProviderEntity(newInputData)!;
            final isFormValid =
                await validationProvider.isValid(newInputEntity);
            canSubmit = isFormValid;
          }
        } else {
          final bool hasPreviousError = _checkForCurrentFieldError(newInputMap);

          if (hasPreviousError) {
            canSubmit = false;
          }
        }

        emitter(
          state.copyWith(
            data: state.data.copyWith(inputMap: newInputMap),
            canRebuild: true,
            currentActionEvent: null,
            isFormValid: canSubmit,
            canSubmit: canSubmit,
          ),
        );
      } else {
        // TODO(quan): BUG - Investigate if this is still needed
        /*// Because the form is not dirty and the user has decide to not provide
        // any input for the exited field. We want to make sure that the field
        // should not have any error. Also all other fields that might have
        // an error should be cleared as well. (i.e. It's a new form and there
        // should not be any error any where.)
        for (final FormFieldId element in newInputMap.keys) {
          newInputMap[element] =
              newInputMap[element]!.copyWith(errorText: null);
        }*/

        emitter(
          state.copyWith(
            data: state.data.copyWith(inputMap: newInputMap),
            currentActionEvent: null,
            canRebuild: true,
          ),
        );
      }
    }
  }

  Future<void> _handleFormInputToggling(
    FormFieldId fieldId,
    Emitter<FormBlocState> emit,
  ) async {
    // Toggle the value and update.
    return _handleFormInputChanging(
      fieldId,
      !(state.data.inputMap[fieldId] as ToggledValueInputViewModel).value,
      emit,
    );
  }

  /// Initialize the form's fields with values.
  void _initializeDataInputMapWithMapData(Map<FormFieldId, dynamic>? data) {
    if (data != null) {
      for (int i = 0; i < data.keys.length; i++) {
        final FormFieldId formFieldId = data.keys.elementAt(i);
        final InputViewModel? inputViewModel = state.data.inputMap[formFieldId];

        switch (inputViewModel) {
          case TextInputViewModel():
            state.data.inputMap[formFieldId] = inputViewModel.copyWith(
              inputValue:
                  data[formFieldId] != null ? '${data[formFieldId]}' : '',
            );
            break;
          case SingleSelectInputViewModel():
            state.data.inputMap[formFieldId] = inputViewModel.copyWith(
              value: data[formFieldId],
            );
            break;
          case MultipleSelectInputViewModel():
            state.data.inputMap[formFieldId] = inputViewModel.copyWith(
              values: data[formFieldId] as List<dynamic>?,
            );
            break;
          case ToggledValueInputViewModel():
            state.data.inputMap[formFieldId] = inputViewModel.copyWith(
              value: data[formFieldId] != null && data[formFieldId] == true,
            );
            break;
          default:
            break;
        }
      }
    }
  }

  /// Clear the the form inputs' values.
  void _clearDataInputMap() {
    for (int i = 0; i < state.data.inputMap.keys.length; i++) {
      final FormFieldId formFieldId = state.data.inputMap.keys.elementAt(i);
      final InputViewModel? inputViewModel = state.data.inputMap[formFieldId];

      switch (inputViewModel) {
        case TextInputViewModel():
          state.data.inputMap[formFieldId] = inputViewModel.copyWith(
            inputValue: '',
            errorText: null,
          );
          break;
        case SingleSelectInputViewModel():
          state.data.inputMap[formFieldId] = SingleSelectInputViewModel(
            labelText: inputViewModel.labelText,
            hintText: inputViewModel.hintText,
            infoText: inputViewModel.infoText,
            options: inputViewModel.options,
            isHidden: inputViewModel.isHidden,
          );
          break;
        case MultipleSelectInputViewModel():
          state.data.inputMap[formFieldId] = inputViewModel.copyWith(
            values: null,
            errorText: null,
          );
          break;
        case ToggledValueInputViewModel():
          state.data.inputMap[formFieldId] = inputViewModel.copyWith(
            value: false,
            errorText: null,
          );
          break;
        default:
          break;
      }
    }
  }

  /// Parses the input fields' value and returns a map of the fields' value.
  Map<FormFieldId, dynamic> _getInputData() {
    return state.data.inputMap.map<FormFieldId, dynamic>(
      (FormFieldId key, dynamic value) {
        final InputViewModel viewModel = state.data.inputMap[key]!;

        return switch (viewModel) {
          TextInputViewModel() =>
            MapEntry<FormFieldId, dynamic>(key, viewModel.inputValue),
          SingleSelectInputViewModel() =>
            MapEntry<FormFieldId, dynamic>(key, viewModel.value),
          MultipleSelectInputViewModel() =>
            MapEntry<FormFieldId, dynamic>(key, viewModel.values),
          ToggledValueInputViewModel() =>
            MapEntry<FormFieldId, dynamic>(key, viewModel.value),
          _ => MapEntry<FormFieldId, dynamic>(key, null),
        };
      },
    );
  }

  /// Clears all errorText in each form input
  /// TODO(quan): Verify before removing.
  /*Map<FormFieldId, InputViewModel> _resetFormValidationInfo(
    Map<FormFieldId, InputViewModel> inputMap,
  ) {
    for (final FormFieldId fieldId in inputMap.keys) {
      inputMap[fieldId] = inputMap[fieldId]!.copyWith(
        errorText: null,
      );
    }

    // Create a new inputMap to update the state.data
    return Map<FormFieldId, InputViewModel>.from(inputMap);
  }*/

  /// Creates a new input map with the result of the field's validation.
  Map<FormFieldId, InputViewModel> _createInputMapWithFieldValidation(
    FormFieldId fieldId,
    dynamic inputValue, {
    bool isExitingField = false,
  }) {
    // Validate the field that is changing
    final FormFieldValidation resultValidationType =
        _checkAndPerformFieldValidation(
      fieldId,
      inputValue,
      isExitingField: isExitingField,
    );

    // Get the error message based on the validation result.
    String? fieldErrorText;
    if (state.inputConfigMap[fieldId] != null) {
      fieldErrorText = getValidationMessage(
        resultValidationType,
        state.inputConfigMap[fieldId] as FormFieldConfig,
      );
    }

    return _getInputMapWithFieldInfo(
      fieldId,
      fieldErrorText,
      inputValue: inputValue,
    );
  }

  Map<FormFieldId, InputViewModel> _getInputMapWithFieldInfo(
    FormFieldId fieldId,
    String? fieldErrorText, {
    dynamic inputValue,
  }) {
    // Create a new inputMap to update the state.data
    final Map<FormFieldId, InputViewModel> newInputMap =
        Map<FormFieldId, InputViewModel>.from(state.data.inputMap);
    final InputViewModel? inputViewModel = state.data.inputMap[fieldId];

    switch (inputViewModel) {
      case TextInputViewModel():
        newInputMap[fieldId] = inputViewModel.copyWith(
          inputValue: inputValue as String,
          errorText: fieldErrorText,
        );
        break;
      case ToggledValueInputViewModel():
        newInputMap[fieldId] = inputViewModel.copyWith(
          value: inputValue as bool,
          errorText: fieldErrorText,
        );
        break;
      case SingleSelectInputViewModel():
        newInputMap[fieldId] = inputViewModel.copyWith(
          value: inputValue,
          errorText: fieldErrorText,
        );
        break;
      case MultipleSelectInputViewModel():
        newInputMap[fieldId] = inputViewModel.copyWith(
          values: inputValue as List<dynamic>?,
          errorText: fieldErrorText,
        );
        break;
      default:
        break;
    }

    return newInputMap;
  }

  /// Update each field in the [newInputMap] with the validation information
  /// included in the [validationMap].
  Map<FormFieldId, InputViewModel> _updateInputMapWithValidationMap(
    Map<FormFieldId, InputViewModel> newInputMap,
    Map<FormFieldId, String?> validationMap,
  ) {
    // Validation results are specific to each FormValidationProvider. This
    // means only the fields which have validation information will be included
    // in the result validation map. Thus, we can only check for the keys that
    // are available. For example, The Change Password form validation provider
    // returns the validation results for the New Password fields because the
    // validator only checks to make sure the New Password fields have the same
    // values.
    for (final FormFieldId fieldId in validationMap.keys) {
      // All InputViewModel types in the union have an "errorText"
      // property, this copy should work.
      newInputMap[fieldId] = newInputMap[fieldId]!.copyWith(
        errorText: validationMap[fieldId],
      );
    }

    return newInputMap;
  }

  /// Used to validate a field as input is being entered into the field.
  /// [isExitingField] is used to tell the function to run the
  /// Field validation for the field on exit only.
  FormFieldValidation _checkAndPerformFieldValidation(
    FormFieldId fieldId,
    dynamic currentInputValue, {
    bool isExitingField = false,
  }) {
    final InputViewModel? inputVM = state.data.inputMap[fieldId];
    FormFieldValidation validationResult = FormFieldValidation.valid;
    switch (inputVM) {
      case TextInputViewModel():
        final int fieldLength = (currentInputValue as String?)?.length ?? 0;
        final int previousInputLength = inputVM.inputValue.length;

        if (state.inputConfigMap[fieldId] == null) {
          return FormFieldValidation.valid;
        }

        if (!isExitingField &&
            fieldLength > 0 &&
            state.inputConfigMap[fieldId]!.minChars > 0 &&
            fieldLength < state.inputConfigMap[fieldId]!.minChars) {
          final bool isCharRemoved = previousInputLength > fieldLength;

          validationResult = isCharRemoved
              ? FormFieldValidation.fieldTooShort
              : FormFieldValidation.valid;
        } else if (!isExitingField &&
            fieldLength > 0 &&
            fieldLength >= state.inputConfigMap[fieldId]!.minChars) {
          final bool isCharAdded = previousInputLength < fieldLength;

          // Still adding so it's valid. Also, only check if the maxChars is
          // defined.
          if (isCharAdded && state.inputConfigMap[fieldId]!.maxChars > 0) {
            if (fieldLength <= state.inputConfigMap[fieldId]!.maxChars) {
              validationResult = FormFieldValidation.valid;
            } else {
              validationResult = FormFieldValidation.fieldTooLong;
            }
          } else {
            // The user is clearing the input so it is valid
            validationResult = FormFieldValidation.valid;
          }
        } else {
          validationResult = validateField(
            currentInputValue,
            state.inputConfigMap[fieldId],
          );
        }
        break;
      case SingleSelectInputViewModel():
        // Check for required input. (i.e. If no configuration is provided or
        // when one is provided without setting the allowEmpty to true
        // (default = false), then perform the validation.
        if (!(state.inputConfigMap[fieldId]?.allowEmpty ?? false)) {
          // Select value cannot be null but it can be an empty string.
          validationResult = currentInputValue != null &&
                  (currentInputValue?.toString().isNotEmpty ?? false)
              ? FormFieldValidation.valid
              : FormFieldValidation.fieldRequired;
        }
        break;
      case MultipleSelectInputViewModel():
        if (!(state.inputConfigMap[fieldId]?.allowEmpty ?? true)) {
          // Check for min and max requirements
          if ((currentInputValue as List<dynamic>?)?.isEmpty ?? true) {
            validationResult = FormFieldValidation.fieldRequired;
          } else if ((currentInputValue as List<dynamic>).length <
              (state.inputConfigMap[fieldId]?.minRequiredSelections ?? 0)) {
            validationResult = FormFieldValidation.minSelectionsRequired;
          } else if (currentInputValue.length >
              (state.inputConfigMap[fieldId]?.minRequiredSelections ?? 0)) {
            validationResult = FormFieldValidation.maxSelectionsExceeded;
          } else {
            validationResult = FormFieldValidation.valid;
          }
        }
        break;
      // A Toggle input always has a value (i.e. true | false). Therefore, it
      // is always valid.
      case ToggledValueInputViewModel():
        validationResult = FormFieldValidation.valid;
        break;
      default:
        break;
    }

    return validationResult;
  }

  /// Checks and returns the submittable status of the form.
  Future<bool> _canSubmit(
    FormDataEntity? original,
    FormDataEntity current,
  ) async {
    return (!requiresChangesOnSubmission ||
            validationProvider.isDirty(original, current)) &&
        await validationProvider.isValid(current);
  }

  /// Look through the inputMap to find if there's a field with an error. If so,
  /// return true to indicate that.
  ///
  /// NOTES: This is typically called when the BLoC wants to know if previous
  /// validation has marked a field with an error to determine if it should
  /// enable the 'Submit' button.
  bool _checkForCurrentFieldError(
    Map<FormFieldId, InputViewModel> inputMap,
  ) {
    bool hasError = false;

    for (final FormFieldId element in inputMap.keys) {
      if (inputMap[element]?.errorText?.isNotEmpty ?? false) {
        hasError = true;
      }
    }

    return hasError;
  }
}

/// An action that triggers a FormBloc event.
enum FormAction {
  userInitiatingSubmission,
  userExisting,
  userCancelingStarted,
  submissionOK,
  submissionInProgress,
  submissionError,
  unsavedFormRequested,
  loadingInProgress,
  loadingComplete,
  validatingEntireForm,
  cancelingOk,
}

/// A Validation type associated with the validation result of a TextInput.
enum FormFieldValidation {
  fieldTooLong,
  fieldTooShort,
  invalidInput,
  fieldRequired,
  valid,
  inputExisted,
  minSelectionsRequired,
  maxSelectionsExceeded,
  valueTooBig,
  valueTooSmall,
}

@freezed
sealed class FormEvent with _$FormEvent {
  /// Event to notify the BLoC when it needs to process an action that could
  /// come from a user's action or internal within the BLoC itself.
  const factory FormEvent.performActionStarted({FormAction? eventAction}) =
      _FormPerformActionStarted;
  const factory FormEvent.validateFieldStarted() = _FormValidateFieldStarted;

  /// Event to notify the BLoC when it needs to start loading the form's data.
  const factory FormEvent.initializeFormStarted({
    @Default(false) bool initializeWithValidationErrors,
    @Default(false) bool isReinitializing,
    Map<FormFieldId, dynamic>? formData,
    dynamic entityId,
    String? title,
  }) = _FormInitializeFormStarted;

  /// Event to notify the BLoC when a the user is changing the input in a
  /// TextInput field.
  const factory FormEvent.changeInputStarted(
    FormFieldId fieldId,
    String? inputValue,
  ) = _FormChangeInputStarted;

  /// Event to notify the BLoC when a the user is leaving a TextInput field.
  const factory FormEvent.exitInputTapped(
    FormFieldId fieldId,
    String? inputValue,
  ) = _FormExitInputTapped;

  /// Event to notify the BLoC when a "Toggle" input has been toggled.
  const factory FormEvent.toggleInputTapped(
    FormFieldId fieldId,
  ) = _FormToggleInputTapped;

  /// Event to notify the BLoC when a selection (single-value or
  /// multi-value) is made.
  const factory FormEvent.selectOptionTapped(
    FormFieldId fieldId,
    dynamic value,
  ) = _FormSelectOptionTapped;

  /// Emitted when the form needs to be updated with a map of validation
  /// information. This could be the result of a manual call to validate
  /// the whole form before submission or when a form's client just wants
  /// to validate the form and highlight the validation information in the form.
  const factory FormEvent.updateValidationStarted(
    Map<FormFieldId, String> validationMap,
  ) = _FormUpdateValidationStarted;
}

@freezed
sealed class FormBlocState with _$FormBlocState {
  const factory FormBlocState({
    required FormVM data,
    required Map<dynamic, FormFieldConfig> inputConfigMap,

    /// The external route name which lets the Bloc know if the user
    /// should be routed to a specific page. It's up to the UI (i.e. component)
    /// to decide how the routing happens. e.g. Open a new page or open a modal
    /// bottom sheet.
    String? routeTo,

    /// Indicates if the form will automatically submit the changes as soon as
    /// the bloc determines a valid change. This is helpful for cases such as
    /// when the user edit an inline form field in which the input should be
    /// processed after some throttling.
    @Default(false) bool autoSubmit,

    /// By default, the form is clean and there's nothing to save/submit. As
    /// soon as the form has dirty data,
    @Default(false) bool isFormDirty,

    /// Indicates if the form is valid determined by the FormValidationProvider.
    @Default(false) bool isFormValid,
    @Default(false) bool canSubmit,

    /// Indicates if the form will show a "Submit" button. When false, the
    /// canSubmit property's value has no use.
    /// This is needed in cases where the form is used as a read-only form
    /// which does not allow editing of the form's fields.
    @Default(true) bool isSubmittable,
    FormAction? currentActionEvent,
    @Default(false) bool canRebuild,
    @Default(false) bool isContentLoaded,

    /// When the UI (i.e. FormComponent) has to request the rebuilding of the
    /// forms due to scrolling events or when the user tries to refresh the
    /// page, this is used to tell the bloc if it should grant the request
    @Default(false) bool isUiInitiatedBuildingComplete,
    int? lastStateUpdateTimeStamp,
  }) = _FormBlocState;
}
