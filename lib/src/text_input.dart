import 'package:flutter/material.dart';

import 'form_view_models.dart';
import 'text_input_theme.dart';

export 'text_input_theme.dart';

/// A common text input used to allow users to enter text.
///
/// The [theme] of the widget can be changed to applied a different look and
/// feel. These include but are not limit to [InputDecoration], [TextStyle],
/// etc.
class TextInput extends StatelessWidget {
  const TextInput({
    super.key,
    required this.viewModel,
    this.theme,
    this.controller,
    this.onChange,
    this.onSaved,
    this.onTapped,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.validator,
    this.suffixIcon,
    this.onSuffixIconPressed,
    this.focusNode,
  });

  /// A list of properties used to apply to the [TextFormField] widget.
  final TextInputViewModel viewModel;

  /// [TextStyle], [InputDecoration] and other styles used to theme to this
  /// widget.
  final TextInputThemeData? theme;
  final TextEditingController? controller;
  final ValueChanged<String>? onChange;
  final FormFieldSetter<String>? onSaved;
  final VoidCallback? onTapped;
  final VoidCallback? onEditingComplete;
  final ValueChanged<String>? onFieldSubmitted;
  final FormFieldValidator<String>? validator;
  final Widget? suffixIcon;
  final VoidCallback? onSuffixIconPressed;
  final FocusNode? focusNode;

  bool get hasError => viewModel.errorText?.isNotEmpty == true;

  @override
  Widget build(BuildContext context) {
    final TextInputThemeData theme = this.theme ?? TextInputTheme.of(context);
    final InputBorder? border = hasError
        ? theme.inputDecoration.errorBorder
        : theme.inputDecoration.enabledBorder;

    return Container(
      constraints: theme.constraints,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Flexible(
            flex: 0,
            fit: FlexFit.loose,
            child: TextFormField(
              enabled: !viewModel.isDisabled,
              controller: controller,
              obscureText: viewModel.isInputObscured,
              onChanged: onChange,
              onSaved: onSaved,
              readOnly: viewModel.isReadOnly,
              onTap: onTapped,
              focusNode: focusNode,
              textCapitalization:
                  viewModel.textCapitalization ?? TextCapitalization.characters,
              keyboardType: viewModel.textInputType ?? TextInputType.text,
              onEditingComplete: onEditingComplete,
              onFieldSubmitted: onFieldSubmitted,
              textInputAction: viewModel.textInputAction,
              inputFormatters: viewModel.inputFormatters,
              decoration: theme.inputDecoration.copyWith(
                hintText: viewModel.hintText,
                labelText: viewModel.labelText,
                helperText: viewModel.infoText,
                suffixIcon: suffixIcon != null
                    ? IconButton(
                        icon: suffixIcon!,
                        color: theme.suffixIconColor,
                        onPressed: onSuffixIconPressed,
                        hoverColor: theme.suffixIconHoverColor,
                      )
                    : null,
                border: border,
                enabledBorder: border,
                focusedBorder: theme.inputDecoration.focusedBorder,
                fillColor: theme.inputDecoration.fillColor,
                // Hides the TextFormField's errorText since we use a custom
                // widget below the TextFormField to show the error text.
                errorStyle: const TextStyle(
                  fontSize: 0,
                  height: 0.01,
                ),
              ),
              style: theme.inputTextStyle,
              strutStyle: theme.strutStyle,
              cursorWidth: 1,
              maxLength: theme.maxLength,
              validator: validator,
              cursorColor: theme.cursorColor,
              minLines: theme.minLines,
              maxLines: theme.maxLines,
              autovalidateMode: viewModel.autoValidateMode,
              autofocus: viewModel.isAutoFocused,
              cursorHeight: theme.cursorHeight,
              cursorRadius: theme.cursorRadius,
            ),
          ),
          if (hasError)
            Align(
              alignment: theme.errorTextAlignment,
              child: Container(
                margin: EdgeInsets.only(top: theme.errorTopSpacing),
                child: Text(
                  viewModel.errorText!,
                  style: theme.errorTextStyle,
                  maxLines: theme.errorTextMaxLines,
                  overflow: theme.errorTextOverflow,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
