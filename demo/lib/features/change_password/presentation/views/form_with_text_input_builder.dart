import 'package:flex_form/flex_form.dart';
import 'package:flex_form_demo/features/change_password/presentation/change_password_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_with_text_input_builder.freezed.dart';

class ChangePasswordFormWithTextInputBuilder extends StatefulWidget {
  const ChangePasswordFormWithTextInputBuilder({super.key, this.theme});
  final ChangePasswordFormWithTextInputBuilderThemeData? theme;

  @override
  State<ChangePasswordFormWithTextInputBuilder> createState() =>
      _ChangePasswordFormWithTextInputBuilderState();
}

class _ChangePasswordFormWithTextInputBuilderState
    extends State<ChangePasswordFormWithTextInputBuilder> {
  late ChangePasswordFormWithTextInputBuilderThemeData _theme;
  late ChangePasswordFormBloc _changePasswordFormBloc;

  ChangePasswordFormWithTextInputBuilderThemeData get theme => _theme;

  @override
  void initState() {
    _changePasswordFormBloc = ChangePasswordFormBloc();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _theme =
        widget.theme ?? ChangePasswordFormWithTextInputBuilderTheme.of(context);

    return Container(
      color: theme.backgroundColor,
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
              textInputBuilder: ({
                buttonText,
                canSubmit,
                cancelButtonText,
                required context,
                onSubmit,
                required textInputs,
              }) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      _changePasswordFormBloc.state.data.title!,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 25),
                    ...textInputs,
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
sealed class ChangePasswordFormWithTextInputBuilderThemeData
    with _$ChangePasswordFormWithTextInputBuilderThemeData {
  const factory ChangePasswordFormWithTextInputBuilderThemeData({
    required Color backgroundColor,
  }) = _ChangePasswordFormWithTextInputBuilderThemeData;

  factory ChangePasswordFormWithTextInputBuilderThemeData.fallback(
      BuildContext context) {
    return ChangePasswordFormWithTextInputBuilderThemeData(
      backgroundColor: Theme.of(context).colorScheme.surface,
    );
  }
}

class ChangePasswordFormWithTextInputBuilderTheme extends InheritedWidget {
  const ChangePasswordFormWithTextInputBuilderTheme({
    required super.child,
    required this.data,
    super.key,
  });

  final ChangePasswordFormWithTextInputBuilderThemeData data;

  @override
  bool updateShouldNotify(
      ChangePasswordFormWithTextInputBuilderTheme oldWidget) {
    return data != oldWidget.data;
  }

  static ChangePasswordFormWithTextInputBuilderThemeData of(
    BuildContext context, {
    bool respondToDarkMode = false,
  }) {
    final result = context.dependOnInheritedWidgetOfExactType<
        ChangePasswordFormWithTextInputBuilderTheme>();

    return result?.data ??
        ChangePasswordFormWithTextInputBuilderThemeData.fallback(context);
  }
}
