import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'text_input_theme.dart';

part 'form_component_theme.freezed.dart';

/// "ThemeData" class for the FormComponent Component widget.
@freezed
class FormComponentThemeData with _$FormComponentThemeData {
  const factory FormComponentThemeData({
    required TextInputThemeData textInputTheme,
  }) = _FormComponentThemeData;

  factory FormComponentThemeData.fallback(
    BuildContext context, {
    bool respondToDarkMode = true,
  }) {
    return FormComponentThemeData(
      textInputTheme: TextInputThemeData.fallback(context),
    );
  }
}

/// An [InheritedWidget] used to pass a form's [FormComponentThemeData] down
/// the tree.
class FormComponentTheme extends InheritedWidget {
  const FormComponentTheme({
    super.key,
    required super.child,
    required this.data,
  });

  final FormComponentThemeData data;

  @override
  bool updateShouldNotify(FormComponentTheme oldWidget) {
    return data != oldWidget.data;
  }

  static FormComponentThemeData of(
    BuildContext context, {
    bool respondToDarkMode = false,
  }) {
    final FormComponentTheme? result =
        context.dependOnInheritedWidgetOfExactType<FormComponentTheme>();

    return result?.data ??
        FormComponentThemeData.fallback(
          context,
          respondToDarkMode: respondToDarkMode,
        );
  }
}
