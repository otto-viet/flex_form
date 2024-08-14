import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_input_theme.freezed.dart';

/// Theme definition used by a [TextInput] widget to style the input.
@freezed
class TextInputThemeData with _$TextInputThemeData {
  factory TextInputThemeData({
    required BoxConstraints constraints,
    required InputDecoration inputDecoration,
    required TextStyle inputTextStyle,
    required TextStyle errorTextStyle,
    required StrutStyle strutStyle,
    required double errorTopSpacing,
    required Color cursorColor,
    required int errorTextMaxLines,
    required TextOverflow errorTextOverflow,
    required Alignment errorTextAlignment,
    required double cursorHeight,
    required Radius cursorRadius,
    double? cursorWidth,
    int? maxLength,
    int? minLines,
    int? maxLines,
    Color? suffixIconColor,
    Color? suffixIconHoverColor,
  }) = _TextInputThemeData;

  factory TextInputThemeData.fallback(
    BuildContext context, {
    bool showSuffixIcon = false,
    double? startHeight,
    bool isFlexibleHeight = false,
    bool isUnderlined = false,
    bool isReadOnly = false,
    bool showBorder = true,
    bool includeFillColor = false,
    bool specifyContentPadding = true,
    int errorTextMaxLines = 1,
  }) {
    final ThemeData theme = Theme.of(context);
    final BorderSide borderSide = BorderSide(
      color: theme.colorScheme.outlineVariant,
      width: 1,
      style: showBorder ? BorderStyle.solid : BorderStyle.none,
    );
    final InputBorder inputBorder = !isUnderlined
        ? OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(3.5)),
            borderSide: borderSide,
          )
        : UnderlineInputBorder(
            borderSide: isReadOnly
                ? borderSide
                : borderSide.copyWith(
                    color: theme.disabledColor,
                  ),
          );
    final TextStyle textStyle = theme.textTheme.bodyLarge!;
    final InputBorder errorBorder = inputBorder.copyWith(
      borderSide: BorderSide(
        color: theme.colorScheme.error,
      ),
    );
    final Color readOnlyFillColor =
        theme.inputDecorationTheme.fillColor!.withOpacity(0.3);
    final Color readOnlyTextInputColor = theme.hintColor;
    final Color fillColor = isReadOnly
        ? readOnlyFillColor
        : theme.colorScheme.surfaceContainerHighest;

    return TextInputThemeData(
      constraints: BoxConstraints(
        minHeight: startHeight ?? defaultHeight,

        // If a parent widget wants to make the maxHeight depend on its own
        // height, then set it to double.maxInfinity.
        maxHeight: isFlexibleHeight || (errorTextMaxLines > 1)
            ? double.maxFinite
            : defaultHeight,
      ),
      inputDecoration: InputDecoration(
        filled: !isUnderlined,
        fillColor: includeFillColor ? fillColor : Colors.transparent,
        enabledBorder: inputBorder,
        focusedBorder: inputBorder.copyWith(
          borderSide:
              inputBorder.borderSide.copyWith(color: theme.primaryColor),
        ),
        errorBorder: errorBorder,
        focusedErrorBorder: errorBorder,
        contentPadding: specifyContentPadding
            ? EdgeInsets.symmetric(horizontal: !isUnderlined ? 14.5 : 0)
            : null,
        labelStyle: theme.textTheme.bodyMedium!.copyWith(
          color: theme.hintColor,
          fontWeight: FontWeight.w600,
        ),
        hintStyle: theme.textTheme.bodyMedium!.copyWith(
          color: theme.hintColor,
        ),
        errorStyle: theme.textTheme.bodySmall!.copyWith(
          color: theme.colorScheme.error,
        ),
        helperStyle: theme.textTheme.bodySmall!.copyWith(
          color: theme.hintColor,
        ),
        errorMaxLines: 1,
      ),
      inputTextStyle: textStyle.copyWith(
        color: isReadOnly ? readOnlyTextInputColor : textStyle.color,
      ),
      errorTextStyle: theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.error,
      ),
      cursorWidth: 1,
      suffixIconColor: showSuffixIcon ? theme.hintColor : null,
      suffixIconHoverColor: showSuffixIcon ? Colors.transparent : null,
      strutStyle: StrutStyle.fromTextStyle(textStyle),
      errorTopSpacing: 3,
      cursorColor: theme.colorScheme.primary,
      errorTextMaxLines: errorTextMaxLines,
      errorTextOverflow: TextOverflow.ellipsis,
      errorTextAlignment: Alignment.topRight,
      cursorHeight: 16,
      cursorRadius: const Radius.circular(10),
    );
  }

  factory TextInputThemeData.search(BuildContext context) {
    final ThemeData appTheme = Theme.of(context);
    final TextInputThemeData defaultTheme =
        TextInputThemeData.fallback(context);

    return defaultTheme.copyWith(
      inputDecoration: defaultTheme.inputDecoration.copyWith(
        fillColor: appTheme.colorScheme.onSecondary.withOpacity(0.06),
      ),
    );
  }

  factory TextInputThemeData.multiline(
    BuildContext context, {
    bool isFlexibleHeight = false,
    int minLines = 2,
    int maxLines = 3,
    bool hideBorder = false,
    bool isUnderlined = false,
    double? startHeight,
    bool isAlignHintLabel = false,
  }) {
    final TextInputThemeData defaultTheme = TextInputThemeData.fallback(
      context,
      startHeight: startHeight,
      isFlexibleHeight: isFlexibleHeight,
      isUnderlined: isUnderlined,
    );

    BorderSide? borderSide;

    if (hideBorder) {
      borderSide = const BorderSide(
        color: Colors.transparent,
        width: 0,
      );
    }

    return defaultTheme.copyWith(
      minLines: minLines,
      maxLines: maxLines,
      inputDecoration: defaultTheme.inputDecoration.copyWith(
        contentPadding: EdgeInsets.symmetric(
          vertical: 15,
          horizontal: isUnderlined ? 0 : 15,
        ),
        border: hideBorder
            ? defaultTheme.inputDecoration.border
                ?.copyWith(borderSide: borderSide)
            : defaultTheme.inputDecoration.border,
        enabledBorder: hideBorder
            ? defaultTheme.inputDecoration.enabledBorder
                ?.copyWith(borderSide: borderSide)
            : defaultTheme.inputDecoration.enabledBorder,
        disabledBorder: hideBorder
            ? defaultTheme.inputDecoration.disabledBorder
                ?.copyWith(borderSide: borderSide)
            : defaultTheme.inputDecoration.disabledBorder,
        focusedBorder: defaultTheme.inputDecoration.focusedBorder,
        alignLabelWithHint: isAlignHintLabel,
      ),
    );
  }

  factory TextInputThemeData.readOnly(BuildContext context) {
    return TextInputThemeData.fallback(
      context,
      isReadOnly: true,
    );
  }

  static const double defaultHeight = 72;
  static const double errorTextHeight = 18;
  static const double inputHeightWithoutError = defaultHeight - errorTextHeight;
}

class TextInputTheme extends InheritedWidget {
  const TextInputTheme({super.key, required super.child, required this.data});
  final TextInputThemeData data;

  @override
  bool updateShouldNotify(TextInputTheme oldWidget) {
    return data != oldWidget.data;
  }

  static TextInputThemeData of(
    BuildContext context, {
    bool respondToDarkMode = false,
  }) {
    final TextInputTheme? result =
        context.dependOnInheritedWidgetOfExactType<TextInputTheme>();

    return result?.data ?? TextInputThemeData.fallback(context);
  }
}
