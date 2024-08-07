import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'form_bloc.dart';
import 'form_component_theme.dart';
import 'form_field_id.dart';
import 'form_view_models.dart';
import 'text_input.dart';
import 'throttler.dart';

export 'form_component_theme.dart';

/// Form builder to build input widgets prepared by the component.
///
/// Use this builder when the parent widget just wants a list of inputs to
/// lay them out based on the parent's layout.
typedef FormInputBuilder = Widget Function({
  required BuildContext context,
  required List<Widget> textInputs,
  VoidCallback? onSubmit,
  String? buttonText,
  String? cancelButtonText,
  bool? canSubmit,
});

/// Form builder using components of the inputs to layout the inputs based on a
/// custom layout.
///
/// Use this builder if the parent wants to have more control of the layout of
/// the form it is building.
typedef FormDataBuilder = Widget Function({
  required BuildContext context,
  required Map<FormFieldId, InputViewModel> inputMap,
  Map<FormFieldId, ValueChanged<dynamic>>? onChangeCallbackMap,
  Map<FormFieldId, TextEditingController>? textControllerMap,
  Map<FormFieldId, FocusNode>? focusNodeMap,
  VoidCallback? onSubmit,
  String? buttonText,
  String? cancelButtonText,
  bool? canSubmit,
  bool? isSubmitting,
  bool? isLoading,
});

/// A widget component used to build a form with support for field and form
/// validation and submission.
class FormComponent extends StatefulWidget {
  const FormComponent({
    super.key,
    required this.bloc,
    this.theme,
    this.textInputBuilder,
    this.dataBuilder,
    this.onSuccessSubmission,
    this.onErrorSubmission,
  });

  // NOTE: Let the component handle the creation and disposal of this bloc
  final FormBloc bloc;
  final FormComponentThemeData? theme;
  final FormInputBuilder? textInputBuilder;
  final FormDataBuilder? dataBuilder;
  final ValueChanged<dynamic>? onSuccessSubmission;
  final VoidCallback? onErrorSubmission;

  @override
  State<FormComponent> createState() => _FormComponentState();
}

class _FormComponentState extends State<FormComponent> {
  late Map<FormFieldId, TextEditingController> _inputTextControllerMap;
  late Map<FormFieldId, VoidCallback> _focusNodeListeners;
  late Map<FormFieldId, FocusNode> _inputFocusNodeMap;
  late Map<FormFieldId, Debouncer> _debouncers;
  late FormComponentThemeData _theme;

  /// Used to indicate if the form fields' [TextEditingController] and
  /// [FocusNode] are initialized.
  bool _isInitialized = false;

  FormComponentThemeData get theme => _theme;

  @override
  void initState() {
    _inputTextControllerMap =
        Map<FormFieldId, TextEditingController>.fromEntries(
      widget.bloc.state.data.inputMap.keys.map(
        (FormFieldId e) => MapEntry<FormFieldId, TextEditingController>(
          e,
          TextEditingController(),
        ),
      ),
    );
    _focusNodeListeners = Map<FormFieldId, VoidCallback>.fromEntries(
      widget.bloc.state.data.inputMap.keys.map(
        (FormFieldId e) => MapEntry<FormFieldId, VoidCallback>(e, () {
          if (_inputFocusNodeMap[e]?.hasFocus == false &&
              !widget.bloc.isClosed) {
            widget.bloc.add(
              FormEvent.exitInputTapped(e, _inputTextControllerMap[e]?.text),
            );
          }
        }),
      ),
    );
    _inputFocusNodeMap = Map<FormFieldId, FocusNode>.fromEntries(
      widget.bloc.state.data.inputMap.keys.map(
        (FormFieldId e) => MapEntry<FormFieldId, FocusNode>(
          e,
          FocusNode()..addListener(_focusNodeListeners[e] as VoidCallback),
        ),
      ),
    );
    _debouncers = Map<FormFieldId, Debouncer>.fromEntries(
      widget.bloc.state.data.inputMap.keys.map(
        (FormFieldId e) => MapEntry<FormFieldId, Debouncer>(
          e,
          Debouncer(
            const Duration(milliseconds: 200),
            (List<dynamic>? args) {
              widget.bloc.add(
                FormEvent.changeInputStarted(
                    e, _inputTextControllerMap[e]?.text),
              );
            },
            <dynamic>[],
            immediateExecute: false,
          ),
        ),
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    _inputTextControllerMap.values
        .map((TextEditingController e) => e.dispose());
    for (final FormFieldId key in _inputFocusNodeMap.keys) {
      _inputFocusNodeMap[key]!
        ..removeListener(_focusNodeListeners[key] as VoidCallback)
        ..dispose();
    }

    _debouncers.values.map((Debouncer e) => e.close());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _theme = widget.theme ?? FormComponentTheme.of(context);

    return BlocConsumer<FormBloc, FormBlocState>(
      bloc: widget.bloc,
      builder: (BuildContext context, FormBlocState state) {
        if (widget.textInputBuilder != null) {
          return widget.textInputBuilder!(
            context: context,
            textInputs: _buildInputList(state.data),
            buttonText: state.data.buttonText,
            cancelButtonText: state.data.cancelButtonText,
            canSubmit: state.canSubmit,
            onSubmit: state.canSubmit
                ? () => widget.bloc.add(
                      const FormEvent.performActionStarted(
                        eventAction: FormAction.userInitiatingSubmission,
                      ),
                    )
                : null,
          );
        } else if (widget.dataBuilder != null) {
          _initializeControllers(state.data);
          return widget.dataBuilder!(
            context: context,
            inputMap: state.data.inputMap,
            buttonText: state.data.buttonText,
            cancelButtonText: state.data.cancelButtonText,
            canSubmit: state.canSubmit,
            onChangeCallbackMap: state.data.inputMap.map(
              (FormFieldId inputFieldId, InputViewModel inputViewModel) =>
                  MapEntry<FormFieldId, ValueChanged<dynamic>>(inputFieldId,
                      (dynamic value) {
                switch (inputViewModel) {
                  case TextInputViewModel():
                    _handleInputChange(inputFieldId, value as String);
                    break;
                  case SingleSelectInputViewModel():
                    widget.bloc.add(
                      FormEvent.selectOptionTapped(inputFieldId, value),
                    );
                    break;
                  case MultipleSelectInputViewModel():
                    widget.bloc.add(
                      FormEvent.selectOptionTapped(inputFieldId, value),
                    );
                    break;
                  case ToggledValueInputViewModel():
                    widget.bloc.add(
                      FormEvent.toggleInputTapped(inputFieldId),
                    );
                    break;
                }
              }),
            ),
            onSubmit: state.canSubmit
                ? () => widget.bloc.add(
                      const FormEvent.performActionStarted(
                        eventAction: FormAction.userInitiatingSubmission,
                      ),
                    )
                : null,
            textControllerMap: _inputTextControllerMap,
            focusNodeMap: _inputFocusNodeMap,
            isLoading: state.currentActionEvent == FormAction.loadingInProgress,
            isSubmitting:
                state.currentActionEvent == FormAction.submissionInProgress,
          );
        } else {
          return Column(
            children: _buildInputList(state.data),
          );
        }
      },
      listener: (BuildContext context, FormBlocState state) {
        switch (state.currentActionEvent) {
          case FormAction.loadingComplete:
            for (final FormFieldId e in state.data.inputMap.keys) {
              final InputViewModel vm = state.data.inputMap[e]!;

              if (vm is TextInputViewModel) {
                _inputTextControllerMap[e]!.text = vm.inputValue;
              }
            }
            break;
          case FormAction.submissionOK:
            if (widget.onSuccessSubmission != null) {
              widget.onSuccessSubmission!(widget.bloc.savedEntity);
            }
            break;
          case FormAction.submissionError:
            if (widget.onErrorSubmission != null) {
              widget.onErrorSubmission!();
            }
            break;
          default:
            break;
        }
      },
    );
  }

  List<Widget> _buildInputList(FormVM data) {
    _initializeControllers(data);

    return data.inputMap.keys
        .map((FormFieldId inputFieldId) {
          final InputViewModel? inputViewModel = data.inputMap[inputFieldId];

          switch (inputViewModel) {
            case TextInputViewModel():
              if (inputViewModel.isHidden != true) {
                return TextInput(
                  viewModel: inputViewModel,
                  theme: theme.textInputTheme,
                  focusNode: _inputFocusNodeMap[inputFieldId],
                  controller: _inputTextControllerMap[inputFieldId],
                  onChange: (dynamic value) =>
                      _handleInputChange(inputFieldId, value),
                  onTapped: () =>
                      _handleInputTapped(inputFieldId, inputViewModel),
                );
              } else {
                return Container();
              }
            default:
              break;
          }
        })
        .toList()
        .whereType<TextInput>()
        .toList();
  }

  void _initializeControllers(FormVM data) {
    if (!_isInitialized) {
      for (final FormFieldId inputFieldId in data.inputMap.keys) {
        switch (data.inputMap[inputFieldId]) {
          case TextInputViewModel(inputValue: final String inputValue):
            if (_inputTextControllerMap[inputFieldId] != null) {
              _inputTextControllerMap[inputFieldId]!.text = inputValue;
            }
            break;
          default:
            break;
        }
      }

      _isInitialized = true;
    }
  }

  void _handleInputChange(FormFieldId fieldId, dynamic value) {
    _debouncers[fieldId]?.debounce(<String>[value as String]);
  }

  // Placeholder for handling input tap event such as when we support other
  // types of inputs.
  void _handleInputTapped(FormFieldId fieldId, InputViewModel? data) {
    // Notes:
    // 1. How does a form component know which Suggestion/Select list to open?
    // 2. How does a form field define where its source value come from?
    // 3: A field configuration could define the type of the data
  }
}
