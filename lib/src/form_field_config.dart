import 'package:equatable/equatable.dart';

/// Configuration for a TextInput widget in a FormComponent.
class FormFieldConfig extends Equatable {
  const FormFieldConfig({
    this.minChars = 0,
    this.maxChars = 0,
    this.minValue,
    this.maxValue,
    this.allowEmpty = false,
    this.regexList,
    this.blockListedRegexList,
    this.requiredInputMessage,
    this.invalidInputMessage,
    this.valueTooSmallInputMessage,
    this.valueTooBigInputMessage,
    this.alreadyExistedInputMessage,
    this.highlightOnFormDirty = false,
    this.validateOnExitingOnly = false,
    this.validateFormOnChange = false,
    this.maxAllowedSelections,
    this.minRequiredSelections = 1,
    this.isRegexIgnoredCase = false,
  });

  /// The minimum required length. 0 means no requirement
  final int minChars;

  /// The maximum required length. 0 means no requirement
  final int maxChars;

  /// The maximum allowed value.
  final double? maxValue;

  /// The minimum allowed value.
  final double? minValue;

  /// Indicates if the field can be empty
  final bool allowEmpty;

  /// Indicate if the regex should ignore case
  final bool isRegexIgnoredCase;
  final List<String>? regexList;
  final List<String>? blockListedRegexList;

  /// When provided, the FormValidator will return this as the errorMessage
  final String? requiredInputMessage;
  final String? invalidInputMessage;
  final String? alreadyExistedInputMessage;
  final String? valueTooBigInputMessage;
  final String? valueTooSmallInputMessage;

  /// Highlight the field when the form is dirty to remind the user of an input
  /// that needs to be paid attention to.
  final bool highlightOnFormDirty;

  /// When true, only validate the field on an unfocused event from the field.
  final bool validateOnExitingOnly;

  /// When true, the form's custom validator will call the validate() function
  /// to validate the form and set the form's validation errorText.
  /// NOTE: This setting does not have an effect on the TextInputViewModel
  /// because the form will be re-validated anyway when the input looses its
  /// focus such as when the user leaves the input to focus on another input.
  final bool validateFormOnChange;

  /// Maximum of selections allowed in a multi-selection input. If not set,
  /// there's no limit.
  final int? maxAllowedSelections;

  /// Minimum of selections required in a multi-selection input.
  final int minRequiredSelections;

  @override
  List<Object?> get props => <Object?>[
        minChars,
        maxChars,
        minValue,
        maxValue,
        allowEmpty,
        regexList,
        blockListedRegexList,
        requiredInputMessage,
        invalidInputMessage,
        valueTooSmallInputMessage,
        valueTooBigInputMessage,
        alreadyExistedInputMessage,
        highlightOnFormDirty,
        validateOnExitingOnly,
        validateFormOnChange,
        maxAllowedSelections,
        minRequiredSelections,
        isRegexIgnoredCase,
      ];
}
