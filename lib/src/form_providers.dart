import 'package:flex_form/flex_form.dart';

/// A basic interface for a form that requires loading and submitting data.
abstract class FormDataProvider {
  FormDataProvider({
    required this.data,
    required this.inputDataMapper,
    this.entityId,
  });
  Map<FormFieldId, dynamic> data;
  dynamic entityId;
  final FormInputDataMapper<FormDataEntity> inputDataMapper;

  Future<dynamic> submit(Map<FormFieldId, dynamic> inputMap);
  Future<dynamic> load();
}

/// An interface to provide custom validation logic for a form.
abstract class FormValidationProvider<T extends FormDataEntity> {
  FormValidationProvider({
    required this.inputConfigMap,
    required this.inputDataMapper,
  });
  final Map<FormFieldId, FormFieldConfig> inputConfigMap;
  final FormInputDataMapper<FormDataEntity> inputDataMapper;
  bool isDirty(T? original, T? current) {
    return original != current;
  }

  /// Indicates if the current state of the form is valid. Typically this is
  /// called only when the form is realized to be dirty.
  Future<bool> isValid(T current) async {
    final inputMap = inputDataMapper.toFormInputData(current);
    bool result = true;
    for (var formFieldId in inputMap.keys) {
      result = result &&
          validateField(
                  inputConfigMap[formFieldId], inputConfigMap[formFieldId]) ==
              FormFieldValidation.valid;
    }

    return result;
  }

  /// Validate the form as a result of changes based on the
  /// [currentValidatedField].
  ///
  /// Returns a map of fields and corresponding error messages if the form
  /// implements this functionality. Otherwise, returns null to indicate no-ops.
  Future<Map<FormFieldId, String>?> validate(
    T current, {
    FormFieldId? currentValidatedField,
    T? original,
  }) async {
    return null;
  }

  /// Validate the form again before submitting it.
  /// This is to ensure that if a form wants to run any additional validation
  /// that cannot be run as part of the field validation which should not affect
  /// the performance and the user experience. (E.g. We do not want to call the
  /// server to verify if an email exists everytime the form checks if all the
  /// fields are valid.)
  Future<Map<FormFieldId, String>?> validateUponSubmission(
    T entity, {
    T? original,
  }) async {
    return await validate(entity, original: original);
  }
}
