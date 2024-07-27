import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'form_field_id.dart';

part 'form_view_models.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class FormVM with _$FormVM {
  const factory FormVM({
    @Default(<FormFieldId, InputViewModel>{})
    Map<FormFieldId, InputViewModel> inputMap,
    String? title,
    String? subTitle,
    String? footerText,
    String? buttonText,
    String? cancelButtonText,

    /// An app route path to route to when clicking on the button
    String? routeTo,
  }) = _FormVM;
}

@Freezed(makeCollectionsUnmodifiable: false)
class InputViewModel with _$InputViewModel {
  const factory InputViewModel.text({
    /// Identifier
    dynamic id,

    /// The text appearing above the input when focused
    String? labelText,

    /// The text appearing inside the input when there is no input
    String? hintText,

    /// When not empty, this will be used as the errorText combined with UI
    /// to show the user the message that would otherwise be displayed as an
    /// error message when the user. However, when the errorText is visible
    /// which could contain that same text, the "error" theme is applied to show
    /// seriousness
    String? infoText,
    @Default(true) bool showInfoTextWhenFocusedOnly,

    /// The text appearing under the input when there is an error.
    String? errorText,

    /// By default, Flutter [TextFormField] shows the labelText in the input
    /// input control when the input is not focused and when it doesn't have a
    /// value, and show the hintText when the input is focused and the input
    /// is empty. This doesn't work when we want to show the hintText when
    /// the input is not focused and also does not have a value. In this case,
    /// we need to swap the labelText and hintText to achieve this effect by
    /// setting swapLabelAndHintTextWhenUnfocused to true
    @Default(false) bool swapLabelAndHintTextWhenUnfocused,
    @Default('') String inputValue,
    TextInputAction? textInputAction,
    TextCapitalization? textCapitalization,
    String? suffixIconAsset,
    String? obscuredSuffixIconAsset,
    @Default(false) bool isInputObscured,
    @Default('•') String obscuringCharacter,
    TextInputType? textInputType,

    /// If the input should be read-only. This should be treated different
    /// from isDisabled which indicates the input has been disabled but the
    /// input still looks like a field used for inputs whereas a read-only
    /// field does not look like an input at all.
    @Default(false) bool isReadOnly,
    @Default(false) bool isHidden,
    @Default(false) bool isDisabled,

    /// Indicates if the input should be highlighted with a highlight border
    /// color
    @Default(false) bool isHighlighted,

    /// If the input is used as a Suggestion input field
    @Default(false) bool isSuggestionInput,

    /// 1 line
    @Default(1) int maxLines,
    @Default(false) bool isAutoFocused,

    /// Only show the cursor when the input is focused. If not set, it is up to
    /// Flutter's [TextFormField] to decide.
    bool? showCursorOnlyOnFocus,
    int? maxLength,
    AutovalidateMode? autoValidateMode,

    /// List of TextInputFormatters that can be used to format the text of a
    /// TextInput widget
    List<TextInputFormatter>? inputFormatters,
  }) = TextInputViewModel;

  const factory InputViewModel.singleSelect({
    dynamic id,
    String? errorText,
    String? labelText,
    String? hintText,
    String? infoText,
    dynamic value,

    /// The list of options to select from.
    ///
    /// This list can be empty in cases where a select control doesn't offer
    /// a list of options, rather generating the options and displaying them
    /// dynamically. (e.g. Loading a list from the server dynamically, or
    /// displaying a date picker for the user to select, etc...)
    List<SelectOptionViewModel>? options,
    @Default(false) bool isHidden,
    @Default(false) bool isReadOnly,
    @Default(false) bool isDisabled,
  }) = SingleSelectInputViewModel;

  const factory InputViewModel.multipleSelect({
    dynamic id,
    String? errorText,
    String? labelText,
    String? hintText,
    List<dynamic>? values,
    List<SelectOptionViewModel>? options,
  }) = MultipleSelectInputViewModel;

  const factory InputViewModel.toggledValue({
    dynamic id,
    @Default(false) bool value,
    required String label,
    String? errorText,
  }) = ToggledValueInputViewModel;
}

@freezed
class SelectOptionViewModel with _$SelectOptionViewModel {
  const factory SelectOptionViewModel({
    /// The value of the option.
    ///
    /// This can be null to support ui-only options that can have no values.
    dynamic value,

    /// The text appearing as the option
    required String name,
  }) = _SelectOptionViewModel;
}
