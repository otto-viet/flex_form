import 'package:flex_form/flex_form.dart';
import 'package:flex_form_demo/features/change_password/presentation/change_password_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_with_data_builder.freezed.dart';

class ChangePasswordFormWithDataBuilder extends StatefulWidget {
  const ChangePasswordFormWithDataBuilder({super.key, this.theme});
  final ChangePasswordFormWithDataBuilderThemeData? theme;

  @override
  State<ChangePasswordFormWithDataBuilder> createState() =>
      _ChangePasswordFormWithDataBuilderState();
}

class _ChangePasswordFormWithDataBuilderState
    extends State<ChangePasswordFormWithDataBuilder> {
  late ChangePasswordFormWithDataBuilderThemeData _theme;
  late ChangePasswordFormBloc _changePasswordFormBloc;

  ChangePasswordFormWithDataBuilderThemeData get theme => _theme;

  @override
  void initState() {
    _changePasswordFormBloc = ChangePasswordFormBloc();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _theme = widget.theme ?? ChangePasswordFormWithDataBuilderTheme.of(context);
    Map<FormFieldId, bool>? obscurityInputMap;

    return Container(
      padding: const EdgeInsets.all(45),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 400,
            height: 400,
            child: FormComponent(
              bloc: _changePasswordFormBloc,
              dataBuilder: (
                  {buttonText,
                  canSubmit,
                  cancelButtonText,
                  required context,
                  focusNodeMap,
                  required inputMap,
                  isLoading,
                  isSubmitting,
                  onChangeCallbackMap,
                  onSubmit,
                  textControllerMap}) {
                final oldPasswordViewModel =
                    inputMap[FormFieldId.fd0] as TextInputViewModel;
                final newPasswordViewModel =
                    inputMap[FormFieldId.fd1] as TextInputViewModel;
                final confirmNewPasswordViewModel =
                    inputMap[FormFieldId.fd2] as TextInputViewModel;

                obscurityInputMap ??= <FormFieldId, bool>{
                  FormFieldId.fd0: oldPasswordViewModel.isInputObscured,
                  FormFieldId.fd1: newPasswordViewModel.isInputObscured,
                  FormFieldId.fd2: confirmNewPasswordViewModel.isInputObscured,
                };
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      _changePasswordFormBloc.state.data.title!,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 25),
                    ...inputMap.keys.map(
                      (fieldId) => Column(
                        children: [
                          const SizedBox(height: 10),
                          StatefulBuilder(
                            builder: (context, setState) {
                              return TextInput(
                                theme: theme.textInputTheme,
                                viewModel:
                                    (inputMap[fieldId] as TextInputViewModel)
                                        .copyWith(
                                            isInputObscured:
                                                obscurityInputMap![fieldId]!),
                                focusNode: focusNodeMap![fieldId]!,
                                controller: textControllerMap![fieldId],
                                onChange: onChangeCallbackMap![fieldId]!,
                                suffixIcon: IconButton(
                                  onPressed: () => setState(() =>
                                      obscurityInputMap![fieldId] =
                                          !obscurityInputMap![fieldId]!),
                                  icon: const Icon(Icons.visibility),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    TextButton(
                      onPressed: canSubmit == true ? () {} : null,
                      style: TextButton.styleFrom(
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        foregroundColor:
                            Theme.of(context).textTheme.titleLarge!.color,
                      ),
                      child: Text(buttonText!),
                    )
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

@freezed
sealed class ChangePasswordFormWithDataBuilderThemeData
    with _$ChangePasswordFormWithDataBuilderThemeData {
  const factory ChangePasswordFormWithDataBuilderThemeData({
    required TextInputThemeData textInputTheme,
  }) = _ChangePasswordFormWithDataBuilderThemeData;

  factory ChangePasswordFormWithDataBuilderThemeData.fallback(
      BuildContext context) {
    return ChangePasswordFormWithDataBuilderThemeData(
      textInputTheme: TextInputThemeData.fallback(
        context,
        isFlexibleHeight: true,
      ),
    );
  }
}

class ChangePasswordFormWithDataBuilderTheme extends InheritedWidget {
  const ChangePasswordFormWithDataBuilderTheme({
    required super.child,
    required this.data,
    super.key,
  });

  final ChangePasswordFormWithDataBuilderThemeData data;

  @override
  bool updateShouldNotify(ChangePasswordFormWithDataBuilderTheme oldWidget) {
    return data != oldWidget.data;
  }

  static ChangePasswordFormWithDataBuilderThemeData of(
    BuildContext context, {
    bool respondToDarkMode = false,
  }) {
    final result = context.dependOnInheritedWidgetOfExactType<
        ChangePasswordFormWithDataBuilderTheme>();

    return result?.data ??
        ChangePasswordFormWithDataBuilderThemeData.fallback(context);
  }
}
