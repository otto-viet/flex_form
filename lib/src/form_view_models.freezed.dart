// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_view_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FormVM {
  Map<FormFieldId, InputViewModel> get inputMap =>
      throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get subTitle => throw _privateConstructorUsedError;
  String? get footerText => throw _privateConstructorUsedError;
  String? get buttonText => throw _privateConstructorUsedError;
  String? get cancelButtonText => throw _privateConstructorUsedError;

  /// An app route path to route to when clicking on the button
  String? get routeTo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FormVMCopyWith<FormVM> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormVMCopyWith<$Res> {
  factory $FormVMCopyWith(FormVM value, $Res Function(FormVM) then) =
      _$FormVMCopyWithImpl<$Res, FormVM>;
  @useResult
  $Res call(
      {Map<FormFieldId, InputViewModel> inputMap,
      String? title,
      String? subTitle,
      String? footerText,
      String? buttonText,
      String? cancelButtonText,
      String? routeTo});
}

/// @nodoc
class _$FormVMCopyWithImpl<$Res, $Val extends FormVM>
    implements $FormVMCopyWith<$Res> {
  _$FormVMCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputMap = null,
    Object? title = freezed,
    Object? subTitle = freezed,
    Object? footerText = freezed,
    Object? buttonText = freezed,
    Object? cancelButtonText = freezed,
    Object? routeTo = freezed,
  }) {
    return _then(_value.copyWith(
      inputMap: null == inputMap
          ? _value.inputMap
          : inputMap // ignore: cast_nullable_to_non_nullable
              as Map<FormFieldId, InputViewModel>,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subTitle: freezed == subTitle
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      footerText: freezed == footerText
          ? _value.footerText
          : footerText // ignore: cast_nullable_to_non_nullable
              as String?,
      buttonText: freezed == buttonText
          ? _value.buttonText
          : buttonText // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelButtonText: freezed == cancelButtonText
          ? _value.cancelButtonText
          : cancelButtonText // ignore: cast_nullable_to_non_nullable
              as String?,
      routeTo: freezed == routeTo
          ? _value.routeTo
          : routeTo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FormVMImplCopyWith<$Res> implements $FormVMCopyWith<$Res> {
  factory _$$FormVMImplCopyWith(
          _$FormVMImpl value, $Res Function(_$FormVMImpl) then) =
      __$$FormVMImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<FormFieldId, InputViewModel> inputMap,
      String? title,
      String? subTitle,
      String? footerText,
      String? buttonText,
      String? cancelButtonText,
      String? routeTo});
}

/// @nodoc
class __$$FormVMImplCopyWithImpl<$Res>
    extends _$FormVMCopyWithImpl<$Res, _$FormVMImpl>
    implements _$$FormVMImplCopyWith<$Res> {
  __$$FormVMImplCopyWithImpl(
      _$FormVMImpl _value, $Res Function(_$FormVMImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputMap = null,
    Object? title = freezed,
    Object? subTitle = freezed,
    Object? footerText = freezed,
    Object? buttonText = freezed,
    Object? cancelButtonText = freezed,
    Object? routeTo = freezed,
  }) {
    return _then(_$FormVMImpl(
      inputMap: null == inputMap
          ? _value.inputMap
          : inputMap // ignore: cast_nullable_to_non_nullable
              as Map<FormFieldId, InputViewModel>,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subTitle: freezed == subTitle
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      footerText: freezed == footerText
          ? _value.footerText
          : footerText // ignore: cast_nullable_to_non_nullable
              as String?,
      buttonText: freezed == buttonText
          ? _value.buttonText
          : buttonText // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelButtonText: freezed == cancelButtonText
          ? _value.cancelButtonText
          : cancelButtonText // ignore: cast_nullable_to_non_nullable
              as String?,
      routeTo: freezed == routeTo
          ? _value.routeTo
          : routeTo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FormVMImpl implements _FormVM {
  const _$FormVMImpl(
      {this.inputMap = const <FormFieldId, InputViewModel>{},
      this.title,
      this.subTitle,
      this.footerText,
      this.buttonText,
      this.cancelButtonText,
      this.routeTo});

  @override
  @JsonKey()
  final Map<FormFieldId, InputViewModel> inputMap;
  @override
  final String? title;
  @override
  final String? subTitle;
  @override
  final String? footerText;
  @override
  final String? buttonText;
  @override
  final String? cancelButtonText;

  /// An app route path to route to when clicking on the button
  @override
  final String? routeTo;

  @override
  String toString() {
    return 'FormVM(inputMap: $inputMap, title: $title, subTitle: $subTitle, footerText: $footerText, buttonText: $buttonText, cancelButtonText: $cancelButtonText, routeTo: $routeTo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormVMImpl &&
            const DeepCollectionEquality().equals(other.inputMap, inputMap) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subTitle, subTitle) ||
                other.subTitle == subTitle) &&
            (identical(other.footerText, footerText) ||
                other.footerText == footerText) &&
            (identical(other.buttonText, buttonText) ||
                other.buttonText == buttonText) &&
            (identical(other.cancelButtonText, cancelButtonText) ||
                other.cancelButtonText == cancelButtonText) &&
            (identical(other.routeTo, routeTo) || other.routeTo == routeTo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(inputMap),
      title,
      subTitle,
      footerText,
      buttonText,
      cancelButtonText,
      routeTo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormVMImplCopyWith<_$FormVMImpl> get copyWith =>
      __$$FormVMImplCopyWithImpl<_$FormVMImpl>(this, _$identity);
}

abstract class _FormVM implements FormVM {
  const factory _FormVM(
      {final Map<FormFieldId, InputViewModel> inputMap,
      final String? title,
      final String? subTitle,
      final String? footerText,
      final String? buttonText,
      final String? cancelButtonText,
      final String? routeTo}) = _$FormVMImpl;

  @override
  Map<FormFieldId, InputViewModel> get inputMap;
  @override
  String? get title;
  @override
  String? get subTitle;
  @override
  String? get footerText;
  @override
  String? get buttonText;
  @override
  String? get cancelButtonText;
  @override

  /// An app route path to route to when clicking on the button
  String? get routeTo;
  @override
  @JsonKey(ignore: true)
  _$$FormVMImplCopyWith<_$FormVMImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InputViewModel {
  /// Identifier
  dynamic get id => throw _privateConstructorUsedError;

  /// The text appearing under the input when there is an error.
  String? get errorText => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            dynamic id,
            String? labelText,
            String? hintText,
            String? infoText,
            bool showInfoTextWhenFocusedOnly,
            String? errorText,
            bool swapLabelAndHintTextWhenUnfocused,
            String inputValue,
            TextInputAction? textInputAction,
            TextCapitalization? textCapitalization,
            String? suffixIconAsset,
            String? obscuredSuffixIconAsset,
            bool isInputObscured,
            String obscuringCharacter,
            TextInputType? textInputType,
            bool isReadOnly,
            bool isHidden,
            bool isDisabled,
            bool isHighlighted,
            bool isSuggestionInput,
            int maxLines,
            bool isAutoFocused,
            bool? showCursorOnlyOnFocus,
            int? maxLength,
            AutovalidateMode? autoValidateMode,
            List<TextInputFormatter>? inputFormatters)
        text,
    required TResult Function(
            dynamic id,
            String? errorText,
            String? labelText,
            String? hintText,
            String? infoText,
            dynamic value,
            List<SelectOptionViewModel>? options,
            bool isHidden,
            bool isReadOnly,
            bool isDisabled)
        singleSelect,
    required TResult Function(
            dynamic id,
            String? errorText,
            String? labelText,
            String? hintText,
            List<dynamic>? values,
            List<SelectOptionViewModel>? options)
        multipleSelect,
    required TResult Function(
            dynamic id, bool value, String label, String? errorText)
        toggledValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            dynamic id,
            String? labelText,
            String? hintText,
            String? infoText,
            bool showInfoTextWhenFocusedOnly,
            String? errorText,
            bool swapLabelAndHintTextWhenUnfocused,
            String inputValue,
            TextInputAction? textInputAction,
            TextCapitalization? textCapitalization,
            String? suffixIconAsset,
            String? obscuredSuffixIconAsset,
            bool isInputObscured,
            String obscuringCharacter,
            TextInputType? textInputType,
            bool isReadOnly,
            bool isHidden,
            bool isDisabled,
            bool isHighlighted,
            bool isSuggestionInput,
            int maxLines,
            bool isAutoFocused,
            bool? showCursorOnlyOnFocus,
            int? maxLength,
            AutovalidateMode? autoValidateMode,
            List<TextInputFormatter>? inputFormatters)?
        text,
    TResult? Function(
            dynamic id,
            String? errorText,
            String? labelText,
            String? hintText,
            String? infoText,
            dynamic value,
            List<SelectOptionViewModel>? options,
            bool isHidden,
            bool isReadOnly,
            bool isDisabled)?
        singleSelect,
    TResult? Function(
            dynamic id,
            String? errorText,
            String? labelText,
            String? hintText,
            List<dynamic>? values,
            List<SelectOptionViewModel>? options)?
        multipleSelect,
    TResult? Function(dynamic id, bool value, String label, String? errorText)?
        toggledValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            dynamic id,
            String? labelText,
            String? hintText,
            String? infoText,
            bool showInfoTextWhenFocusedOnly,
            String? errorText,
            bool swapLabelAndHintTextWhenUnfocused,
            String inputValue,
            TextInputAction? textInputAction,
            TextCapitalization? textCapitalization,
            String? suffixIconAsset,
            String? obscuredSuffixIconAsset,
            bool isInputObscured,
            String obscuringCharacter,
            TextInputType? textInputType,
            bool isReadOnly,
            bool isHidden,
            bool isDisabled,
            bool isHighlighted,
            bool isSuggestionInput,
            int maxLines,
            bool isAutoFocused,
            bool? showCursorOnlyOnFocus,
            int? maxLength,
            AutovalidateMode? autoValidateMode,
            List<TextInputFormatter>? inputFormatters)?
        text,
    TResult Function(
            dynamic id,
            String? errorText,
            String? labelText,
            String? hintText,
            String? infoText,
            dynamic value,
            List<SelectOptionViewModel>? options,
            bool isHidden,
            bool isReadOnly,
            bool isDisabled)?
        singleSelect,
    TResult Function(
            dynamic id,
            String? errorText,
            String? labelText,
            String? hintText,
            List<dynamic>? values,
            List<SelectOptionViewModel>? options)?
        multipleSelect,
    TResult Function(dynamic id, bool value, String label, String? errorText)?
        toggledValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextInputViewModel value) text,
    required TResult Function(SingleSelectInputViewModel value) singleSelect,
    required TResult Function(MultipleSelectInputViewModel value)
        multipleSelect,
    required TResult Function(ToggledValueInputViewModel value) toggledValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextInputViewModel value)? text,
    TResult? Function(SingleSelectInputViewModel value)? singleSelect,
    TResult? Function(MultipleSelectInputViewModel value)? multipleSelect,
    TResult? Function(ToggledValueInputViewModel value)? toggledValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextInputViewModel value)? text,
    TResult Function(SingleSelectInputViewModel value)? singleSelect,
    TResult Function(MultipleSelectInputViewModel value)? multipleSelect,
    TResult Function(ToggledValueInputViewModel value)? toggledValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InputViewModelCopyWith<InputViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputViewModelCopyWith<$Res> {
  factory $InputViewModelCopyWith(
          InputViewModel value, $Res Function(InputViewModel) then) =
      _$InputViewModelCopyWithImpl<$Res, InputViewModel>;
  @useResult
  $Res call({dynamic id, String? errorText});
}

/// @nodoc
class _$InputViewModelCopyWithImpl<$Res, $Val extends InputViewModel>
    implements $InputViewModelCopyWith<$Res> {
  _$InputViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? errorText = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      errorText: freezed == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TextInputViewModelImplCopyWith<$Res>
    implements $InputViewModelCopyWith<$Res> {
  factory _$$TextInputViewModelImplCopyWith(_$TextInputViewModelImpl value,
          $Res Function(_$TextInputViewModelImpl) then) =
      __$$TextInputViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic id,
      String? labelText,
      String? hintText,
      String? infoText,
      bool showInfoTextWhenFocusedOnly,
      String? errorText,
      bool swapLabelAndHintTextWhenUnfocused,
      String inputValue,
      TextInputAction? textInputAction,
      TextCapitalization? textCapitalization,
      String? suffixIconAsset,
      String? obscuredSuffixIconAsset,
      bool isInputObscured,
      String obscuringCharacter,
      TextInputType? textInputType,
      bool isReadOnly,
      bool isHidden,
      bool isDisabled,
      bool isHighlighted,
      bool isSuggestionInput,
      int maxLines,
      bool isAutoFocused,
      bool? showCursorOnlyOnFocus,
      int? maxLength,
      AutovalidateMode? autoValidateMode,
      List<TextInputFormatter>? inputFormatters});
}

/// @nodoc
class __$$TextInputViewModelImplCopyWithImpl<$Res>
    extends _$InputViewModelCopyWithImpl<$Res, _$TextInputViewModelImpl>
    implements _$$TextInputViewModelImplCopyWith<$Res> {
  __$$TextInputViewModelImplCopyWithImpl(_$TextInputViewModelImpl _value,
      $Res Function(_$TextInputViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? labelText = freezed,
    Object? hintText = freezed,
    Object? infoText = freezed,
    Object? showInfoTextWhenFocusedOnly = null,
    Object? errorText = freezed,
    Object? swapLabelAndHintTextWhenUnfocused = null,
    Object? inputValue = null,
    Object? textInputAction = freezed,
    Object? textCapitalization = freezed,
    Object? suffixIconAsset = freezed,
    Object? obscuredSuffixIconAsset = freezed,
    Object? isInputObscured = null,
    Object? obscuringCharacter = null,
    Object? textInputType = freezed,
    Object? isReadOnly = null,
    Object? isHidden = null,
    Object? isDisabled = null,
    Object? isHighlighted = null,
    Object? isSuggestionInput = null,
    Object? maxLines = null,
    Object? isAutoFocused = null,
    Object? showCursorOnlyOnFocus = freezed,
    Object? maxLength = freezed,
    Object? autoValidateMode = freezed,
    Object? inputFormatters = freezed,
  }) {
    return _then(_$TextInputViewModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      labelText: freezed == labelText
          ? _value.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
              as String?,
      hintText: freezed == hintText
          ? _value.hintText
          : hintText // ignore: cast_nullable_to_non_nullable
              as String?,
      infoText: freezed == infoText
          ? _value.infoText
          : infoText // ignore: cast_nullable_to_non_nullable
              as String?,
      showInfoTextWhenFocusedOnly: null == showInfoTextWhenFocusedOnly
          ? _value.showInfoTextWhenFocusedOnly
          : showInfoTextWhenFocusedOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      errorText: freezed == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
      swapLabelAndHintTextWhenUnfocused: null ==
              swapLabelAndHintTextWhenUnfocused
          ? _value.swapLabelAndHintTextWhenUnfocused
          : swapLabelAndHintTextWhenUnfocused // ignore: cast_nullable_to_non_nullable
              as bool,
      inputValue: null == inputValue
          ? _value.inputValue
          : inputValue // ignore: cast_nullable_to_non_nullable
              as String,
      textInputAction: freezed == textInputAction
          ? _value.textInputAction
          : textInputAction // ignore: cast_nullable_to_non_nullable
              as TextInputAction?,
      textCapitalization: freezed == textCapitalization
          ? _value.textCapitalization
          : textCapitalization // ignore: cast_nullable_to_non_nullable
              as TextCapitalization?,
      suffixIconAsset: freezed == suffixIconAsset
          ? _value.suffixIconAsset
          : suffixIconAsset // ignore: cast_nullable_to_non_nullable
              as String?,
      obscuredSuffixIconAsset: freezed == obscuredSuffixIconAsset
          ? _value.obscuredSuffixIconAsset
          : obscuredSuffixIconAsset // ignore: cast_nullable_to_non_nullable
              as String?,
      isInputObscured: null == isInputObscured
          ? _value.isInputObscured
          : isInputObscured // ignore: cast_nullable_to_non_nullable
              as bool,
      obscuringCharacter: null == obscuringCharacter
          ? _value.obscuringCharacter
          : obscuringCharacter // ignore: cast_nullable_to_non_nullable
              as String,
      textInputType: freezed == textInputType
          ? _value.textInputType
          : textInputType // ignore: cast_nullable_to_non_nullable
              as TextInputType?,
      isReadOnly: null == isReadOnly
          ? _value.isReadOnly
          : isReadOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      isHidden: null == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      isDisabled: null == isDisabled
          ? _value.isDisabled
          : isDisabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isHighlighted: null == isHighlighted
          ? _value.isHighlighted
          : isHighlighted // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuggestionInput: null == isSuggestionInput
          ? _value.isSuggestionInput
          : isSuggestionInput // ignore: cast_nullable_to_non_nullable
              as bool,
      maxLines: null == maxLines
          ? _value.maxLines
          : maxLines // ignore: cast_nullable_to_non_nullable
              as int,
      isAutoFocused: null == isAutoFocused
          ? _value.isAutoFocused
          : isAutoFocused // ignore: cast_nullable_to_non_nullable
              as bool,
      showCursorOnlyOnFocus: freezed == showCursorOnlyOnFocus
          ? _value.showCursorOnlyOnFocus
          : showCursorOnlyOnFocus // ignore: cast_nullable_to_non_nullable
              as bool?,
      maxLength: freezed == maxLength
          ? _value.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as int?,
      autoValidateMode: freezed == autoValidateMode
          ? _value.autoValidateMode
          : autoValidateMode // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode?,
      inputFormatters: freezed == inputFormatters
          ? _value.inputFormatters
          : inputFormatters // ignore: cast_nullable_to_non_nullable
              as List<TextInputFormatter>?,
    ));
  }
}

/// @nodoc

class _$TextInputViewModelImpl implements TextInputViewModel {
  const _$TextInputViewModelImpl(
      {this.id,
      this.labelText,
      this.hintText,
      this.infoText,
      this.showInfoTextWhenFocusedOnly = true,
      this.errorText,
      this.swapLabelAndHintTextWhenUnfocused = false,
      this.inputValue = '',
      this.textInputAction,
      this.textCapitalization,
      this.suffixIconAsset,
      this.obscuredSuffixIconAsset,
      this.isInputObscured = false,
      this.obscuringCharacter = '•',
      this.textInputType,
      this.isReadOnly = false,
      this.isHidden = false,
      this.isDisabled = false,
      this.isHighlighted = false,
      this.isSuggestionInput = false,
      this.maxLines = 1,
      this.isAutoFocused = false,
      this.showCursorOnlyOnFocus,
      this.maxLength,
      this.autoValidateMode,
      this.inputFormatters});

  /// Identifier
  @override
  final dynamic id;

  /// The text appearing above the input when focused
  @override
  final String? labelText;

  /// The text appearing inside the input when there is no input
  @override
  final String? hintText;

  /// When not empty, this will be used as the errorText combined with UI
  /// to show the user the message that would otherwise be displayed as an
  /// error message when the user. However, when the errorText is visible
  /// which could contain that same text, the "error" theme is applied to show
  /// seriousness
  @override
  final String? infoText;
  @override
  @JsonKey()
  final bool showInfoTextWhenFocusedOnly;

  /// The text appearing under the input when there is an error.
  @override
  final String? errorText;

  /// By default, Flutter [TextFormField] shows the labelText in the input
  /// input control when the input is not focused and when it doesn't have a
  /// value, and show the hintText when the input is focused and the input
  /// is empty. This doesn't work when we want to show the hintText when
  /// the input is not focused and also does not have a value. In this case,
  /// we need to swap the labelText and hintText to achieve this effect by
  /// setting swapLabelAndHintTextWhenUnfocused to true
  @override
  @JsonKey()
  final bool swapLabelAndHintTextWhenUnfocused;
  @override
  @JsonKey()
  final String inputValue;
  @override
  final TextInputAction? textInputAction;
  @override
  final TextCapitalization? textCapitalization;
  @override
  final String? suffixIconAsset;
  @override
  final String? obscuredSuffixIconAsset;
  @override
  @JsonKey()
  final bool isInputObscured;
  @override
  @JsonKey()
  final String obscuringCharacter;
  @override
  final TextInputType? textInputType;

  /// If the input should be read-only. This should be treated different
  /// from isDisabled which indicates the input has been disabled but the
  /// input still looks like a field used for inputs whereas a read-only
  /// field does not look like an input at all.
  @override
  @JsonKey()
  final bool isReadOnly;
  @override
  @JsonKey()
  final bool isHidden;
  @override
  @JsonKey()
  final bool isDisabled;

  /// Indicates if the input should be highlighted with a highlight border
  /// color
  @override
  @JsonKey()
  final bool isHighlighted;

  /// If the input is used as a Suggestion input field
  @override
  @JsonKey()
  final bool isSuggestionInput;

  /// 1 line
  @override
  @JsonKey()
  final int maxLines;
  @override
  @JsonKey()
  final bool isAutoFocused;

  /// Only show the cursor when the input is focused. If not set, it is up to
  /// Flutter's [TextFormField] to decide.
  @override
  final bool? showCursorOnlyOnFocus;
  @override
  final int? maxLength;
  @override
  final AutovalidateMode? autoValidateMode;

  /// List of TextInputFormatters that can be used to format the text of a
  /// TextInput widget
  @override
  final List<TextInputFormatter>? inputFormatters;

  @override
  String toString() {
    return 'InputViewModel.text(id: $id, labelText: $labelText, hintText: $hintText, infoText: $infoText, showInfoTextWhenFocusedOnly: $showInfoTextWhenFocusedOnly, errorText: $errorText, swapLabelAndHintTextWhenUnfocused: $swapLabelAndHintTextWhenUnfocused, inputValue: $inputValue, textInputAction: $textInputAction, textCapitalization: $textCapitalization, suffixIconAsset: $suffixIconAsset, obscuredSuffixIconAsset: $obscuredSuffixIconAsset, isInputObscured: $isInputObscured, obscuringCharacter: $obscuringCharacter, textInputType: $textInputType, isReadOnly: $isReadOnly, isHidden: $isHidden, isDisabled: $isDisabled, isHighlighted: $isHighlighted, isSuggestionInput: $isSuggestionInput, maxLines: $maxLines, isAutoFocused: $isAutoFocused, showCursorOnlyOnFocus: $showCursorOnlyOnFocus, maxLength: $maxLength, autoValidateMode: $autoValidateMode, inputFormatters: $inputFormatters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextInputViewModelImpl &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.labelText, labelText) ||
                other.labelText == labelText) &&
            (identical(other.hintText, hintText) ||
                other.hintText == hintText) &&
            (identical(other.infoText, infoText) ||
                other.infoText == infoText) &&
            (identical(other.showInfoTextWhenFocusedOnly, showInfoTextWhenFocusedOnly) ||
                other.showInfoTextWhenFocusedOnly ==
                    showInfoTextWhenFocusedOnly) &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText) &&
            (identical(other.swapLabelAndHintTextWhenUnfocused, swapLabelAndHintTextWhenUnfocused) ||
                other.swapLabelAndHintTextWhenUnfocused ==
                    swapLabelAndHintTextWhenUnfocused) &&
            (identical(other.inputValue, inputValue) ||
                other.inputValue == inputValue) &&
            (identical(other.textInputAction, textInputAction) ||
                other.textInputAction == textInputAction) &&
            (identical(other.textCapitalization, textCapitalization) ||
                other.textCapitalization == textCapitalization) &&
            (identical(other.suffixIconAsset, suffixIconAsset) ||
                other.suffixIconAsset == suffixIconAsset) &&
            (identical(other.obscuredSuffixIconAsset, obscuredSuffixIconAsset) ||
                other.obscuredSuffixIconAsset == obscuredSuffixIconAsset) &&
            (identical(other.isInputObscured, isInputObscured) ||
                other.isInputObscured == isInputObscured) &&
            (identical(other.obscuringCharacter, obscuringCharacter) ||
                other.obscuringCharacter == obscuringCharacter) &&
            (identical(other.textInputType, textInputType) ||
                other.textInputType == textInputType) &&
            (identical(other.isReadOnly, isReadOnly) ||
                other.isReadOnly == isReadOnly) &&
            (identical(other.isHidden, isHidden) ||
                other.isHidden == isHidden) &&
            (identical(other.isDisabled, isDisabled) ||
                other.isDisabled == isDisabled) &&
            (identical(other.isHighlighted, isHighlighted) ||
                other.isHighlighted == isHighlighted) &&
            (identical(other.isSuggestionInput, isSuggestionInput) ||
                other.isSuggestionInput == isSuggestionInput) &&
            (identical(other.maxLines, maxLines) ||
                other.maxLines == maxLines) &&
            (identical(other.isAutoFocused, isAutoFocused) ||
                other.isAutoFocused == isAutoFocused) &&
            (identical(other.showCursorOnlyOnFocus, showCursorOnlyOnFocus) ||
                other.showCursorOnlyOnFocus == showCursorOnlyOnFocus) &&
            (identical(other.maxLength, maxLength) ||
                other.maxLength == maxLength) &&
            (identical(other.autoValidateMode, autoValidateMode) ||
                other.autoValidateMode == autoValidateMode) &&
            const DeepCollectionEquality()
                .equals(other.inputFormatters, inputFormatters));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        labelText,
        hintText,
        infoText,
        showInfoTextWhenFocusedOnly,
        errorText,
        swapLabelAndHintTextWhenUnfocused,
        inputValue,
        textInputAction,
        textCapitalization,
        suffixIconAsset,
        obscuredSuffixIconAsset,
        isInputObscured,
        obscuringCharacter,
        textInputType,
        isReadOnly,
        isHidden,
        isDisabled,
        isHighlighted,
        isSuggestionInput,
        maxLines,
        isAutoFocused,
        showCursorOnlyOnFocus,
        maxLength,
        autoValidateMode,
        const DeepCollectionEquality().hash(inputFormatters)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TextInputViewModelImplCopyWith<_$TextInputViewModelImpl> get copyWith =>
      __$$TextInputViewModelImplCopyWithImpl<_$TextInputViewModelImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            dynamic id,
            String? labelText,
            String? hintText,
            String? infoText,
            bool showInfoTextWhenFocusedOnly,
            String? errorText,
            bool swapLabelAndHintTextWhenUnfocused,
            String inputValue,
            TextInputAction? textInputAction,
            TextCapitalization? textCapitalization,
            String? suffixIconAsset,
            String? obscuredSuffixIconAsset,
            bool isInputObscured,
            String obscuringCharacter,
            TextInputType? textInputType,
            bool isReadOnly,
            bool isHidden,
            bool isDisabled,
            bool isHighlighted,
            bool isSuggestionInput,
            int maxLines,
            bool isAutoFocused,
            bool? showCursorOnlyOnFocus,
            int? maxLength,
            AutovalidateMode? autoValidateMode,
            List<TextInputFormatter>? inputFormatters)
        text,
    required TResult Function(
            dynamic id,
            String? errorText,
            String? labelText,
            String? hintText,
            String? infoText,
            dynamic value,
            List<SelectOptionViewModel>? options,
            bool isHidden,
            bool isReadOnly,
            bool isDisabled)
        singleSelect,
    required TResult Function(
            dynamic id,
            String? errorText,
            String? labelText,
            String? hintText,
            List<dynamic>? values,
            List<SelectOptionViewModel>? options)
        multipleSelect,
    required TResult Function(
            dynamic id, bool value, String label, String? errorText)
        toggledValue,
  }) {
    return text(
        id,
        labelText,
        hintText,
        infoText,
        showInfoTextWhenFocusedOnly,
        errorText,
        swapLabelAndHintTextWhenUnfocused,
        inputValue,
        textInputAction,
        textCapitalization,
        suffixIconAsset,
        obscuredSuffixIconAsset,
        isInputObscured,
        obscuringCharacter,
        textInputType,
        isReadOnly,
        isHidden,
        isDisabled,
        isHighlighted,
        isSuggestionInput,
        maxLines,
        isAutoFocused,
        showCursorOnlyOnFocus,
        maxLength,
        autoValidateMode,
        inputFormatters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            dynamic id,
            String? labelText,
            String? hintText,
            String? infoText,
            bool showInfoTextWhenFocusedOnly,
            String? errorText,
            bool swapLabelAndHintTextWhenUnfocused,
            String inputValue,
            TextInputAction? textInputAction,
            TextCapitalization? textCapitalization,
            String? suffixIconAsset,
            String? obscuredSuffixIconAsset,
            bool isInputObscured,
            String obscuringCharacter,
            TextInputType? textInputType,
            bool isReadOnly,
            bool isHidden,
            bool isDisabled,
            bool isHighlighted,
            bool isSuggestionInput,
            int maxLines,
            bool isAutoFocused,
            bool? showCursorOnlyOnFocus,
            int? maxLength,
            AutovalidateMode? autoValidateMode,
            List<TextInputFormatter>? inputFormatters)?
        text,
    TResult? Function(
            dynamic id,
            String? errorText,
            String? labelText,
            String? hintText,
            String? infoText,
            dynamic value,
            List<SelectOptionViewModel>? options,
            bool isHidden,
            bool isReadOnly,
            bool isDisabled)?
        singleSelect,
    TResult? Function(
            dynamic id,
            String? errorText,
            String? labelText,
            String? hintText,
            List<dynamic>? values,
            List<SelectOptionViewModel>? options)?
        multipleSelect,
    TResult? Function(dynamic id, bool value, String label, String? errorText)?
        toggledValue,
  }) {
    return text?.call(
        id,
        labelText,
        hintText,
        infoText,
        showInfoTextWhenFocusedOnly,
        errorText,
        swapLabelAndHintTextWhenUnfocused,
        inputValue,
        textInputAction,
        textCapitalization,
        suffixIconAsset,
        obscuredSuffixIconAsset,
        isInputObscured,
        obscuringCharacter,
        textInputType,
        isReadOnly,
        isHidden,
        isDisabled,
        isHighlighted,
        isSuggestionInput,
        maxLines,
        isAutoFocused,
        showCursorOnlyOnFocus,
        maxLength,
        autoValidateMode,
        inputFormatters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            dynamic id,
            String? labelText,
            String? hintText,
            String? infoText,
            bool showInfoTextWhenFocusedOnly,
            String? errorText,
            bool swapLabelAndHintTextWhenUnfocused,
            String inputValue,
            TextInputAction? textInputAction,
            TextCapitalization? textCapitalization,
            String? suffixIconAsset,
            String? obscuredSuffixIconAsset,
            bool isInputObscured,
            String obscuringCharacter,
            TextInputType? textInputType,
            bool isReadOnly,
            bool isHidden,
            bool isDisabled,
            bool isHighlighted,
            bool isSuggestionInput,
            int maxLines,
            bool isAutoFocused,
            bool? showCursorOnlyOnFocus,
            int? maxLength,
            AutovalidateMode? autoValidateMode,
            List<TextInputFormatter>? inputFormatters)?
        text,
    TResult Function(
            dynamic id,
            String? errorText,
            String? labelText,
            String? hintText,
            String? infoText,
            dynamic value,
            List<SelectOptionViewModel>? options,
            bool isHidden,
            bool isReadOnly,
            bool isDisabled)?
        singleSelect,
    TResult Function(
            dynamic id,
            String? errorText,
            String? labelText,
            String? hintText,
            List<dynamic>? values,
            List<SelectOptionViewModel>? options)?
        multipleSelect,
    TResult Function(dynamic id, bool value, String label, String? errorText)?
        toggledValue,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(
          id,
          labelText,
          hintText,
          infoText,
          showInfoTextWhenFocusedOnly,
          errorText,
          swapLabelAndHintTextWhenUnfocused,
          inputValue,
          textInputAction,
          textCapitalization,
          suffixIconAsset,
          obscuredSuffixIconAsset,
          isInputObscured,
          obscuringCharacter,
          textInputType,
          isReadOnly,
          isHidden,
          isDisabled,
          isHighlighted,
          isSuggestionInput,
          maxLines,
          isAutoFocused,
          showCursorOnlyOnFocus,
          maxLength,
          autoValidateMode,
          inputFormatters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextInputViewModel value) text,
    required TResult Function(SingleSelectInputViewModel value) singleSelect,
    required TResult Function(MultipleSelectInputViewModel value)
        multipleSelect,
    required TResult Function(ToggledValueInputViewModel value) toggledValue,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextInputViewModel value)? text,
    TResult? Function(SingleSelectInputViewModel value)? singleSelect,
    TResult? Function(MultipleSelectInputViewModel value)? multipleSelect,
    TResult? Function(ToggledValueInputViewModel value)? toggledValue,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextInputViewModel value)? text,
    TResult Function(SingleSelectInputViewModel value)? singleSelect,
    TResult Function(MultipleSelectInputViewModel value)? multipleSelect,
    TResult Function(ToggledValueInputViewModel value)? toggledValue,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }
}

abstract class TextInputViewModel implements InputViewModel {
  const factory TextInputViewModel(
          {final dynamic id,
          final String? labelText,
          final String? hintText,
          final String? infoText,
          final bool showInfoTextWhenFocusedOnly,
          final String? errorText,
          final bool swapLabelAndHintTextWhenUnfocused,
          final String inputValue,
          final TextInputAction? textInputAction,
          final TextCapitalization? textCapitalization,
          final String? suffixIconAsset,
          final String? obscuredSuffixIconAsset,
          final bool isInputObscured,
          final String obscuringCharacter,
          final TextInputType? textInputType,
          final bool isReadOnly,
          final bool isHidden,
          final bool isDisabled,
          final bool isHighlighted,
          final bool isSuggestionInput,
          final int maxLines,
          final bool isAutoFocused,
          final bool? showCursorOnlyOnFocus,
          final int? maxLength,
          final AutovalidateMode? autoValidateMode,
          final List<TextInputFormatter>? inputFormatters}) =
      _$TextInputViewModelImpl;

  @override

  /// Identifier
  dynamic get id;

  /// The text appearing above the input when focused
  String? get labelText;

  /// The text appearing inside the input when there is no input
  String? get hintText;

  /// When not empty, this will be used as the errorText combined with UI
  /// to show the user the message that would otherwise be displayed as an
  /// error message when the user. However, when the errorText is visible
  /// which could contain that same text, the "error" theme is applied to show
  /// seriousness
  String? get infoText;
  bool get showInfoTextWhenFocusedOnly;
  @override

  /// The text appearing under the input when there is an error.
  String? get errorText;

  /// By default, Flutter [TextFormField] shows the labelText in the input
  /// input control when the input is not focused and when it doesn't have a
  /// value, and show the hintText when the input is focused and the input
  /// is empty. This doesn't work when we want to show the hintText when
  /// the input is not focused and also does not have a value. In this case,
  /// we need to swap the labelText and hintText to achieve this effect by
  /// setting swapLabelAndHintTextWhenUnfocused to true
  bool get swapLabelAndHintTextWhenUnfocused;
  String get inputValue;
  TextInputAction? get textInputAction;
  TextCapitalization? get textCapitalization;
  String? get suffixIconAsset;
  String? get obscuredSuffixIconAsset;
  bool get isInputObscured;
  String get obscuringCharacter;
  TextInputType? get textInputType;

  /// If the input should be read-only. This should be treated different
  /// from isDisabled which indicates the input has been disabled but the
  /// input still looks like a field used for inputs whereas a read-only
  /// field does not look like an input at all.
  bool get isReadOnly;
  bool get isHidden;
  bool get isDisabled;

  /// Indicates if the input should be highlighted with a highlight border
  /// color
  bool get isHighlighted;

  /// If the input is used as a Suggestion input field
  bool get isSuggestionInput;

  /// 1 line
  int get maxLines;
  bool get isAutoFocused;

  /// Only show the cursor when the input is focused. If not set, it is up to
  /// Flutter's [TextFormField] to decide.
  bool? get showCursorOnlyOnFocus;
  int? get maxLength;
  AutovalidateMode? get autoValidateMode;

  /// List of TextInputFormatters that can be used to format the text of a
  /// TextInput widget
  List<TextInputFormatter>? get inputFormatters;
  @override
  @JsonKey(ignore: true)
  _$$TextInputViewModelImplCopyWith<_$TextInputViewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SingleSelectInputViewModelImplCopyWith<$Res>
    implements $InputViewModelCopyWith<$Res> {
  factory _$$SingleSelectInputViewModelImplCopyWith(
          _$SingleSelectInputViewModelImpl value,
          $Res Function(_$SingleSelectInputViewModelImpl) then) =
      __$$SingleSelectInputViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic id,
      String? errorText,
      String? labelText,
      String? hintText,
      String? infoText,
      dynamic value,
      List<SelectOptionViewModel>? options,
      bool isHidden,
      bool isReadOnly,
      bool isDisabled});
}

/// @nodoc
class __$$SingleSelectInputViewModelImplCopyWithImpl<$Res>
    extends _$InputViewModelCopyWithImpl<$Res, _$SingleSelectInputViewModelImpl>
    implements _$$SingleSelectInputViewModelImplCopyWith<$Res> {
  __$$SingleSelectInputViewModelImplCopyWithImpl(
      _$SingleSelectInputViewModelImpl _value,
      $Res Function(_$SingleSelectInputViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? errorText = freezed,
    Object? labelText = freezed,
    Object? hintText = freezed,
    Object? infoText = freezed,
    Object? value = freezed,
    Object? options = freezed,
    Object? isHidden = null,
    Object? isReadOnly = null,
    Object? isDisabled = null,
  }) {
    return _then(_$SingleSelectInputViewModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      errorText: freezed == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
      labelText: freezed == labelText
          ? _value.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
              as String?,
      hintText: freezed == hintText
          ? _value.hintText
          : hintText // ignore: cast_nullable_to_non_nullable
              as String?,
      infoText: freezed == infoText
          ? _value.infoText
          : infoText // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<SelectOptionViewModel>?,
      isHidden: null == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      isReadOnly: null == isReadOnly
          ? _value.isReadOnly
          : isReadOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      isDisabled: null == isDisabled
          ? _value.isDisabled
          : isDisabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SingleSelectInputViewModelImpl implements SingleSelectInputViewModel {
  const _$SingleSelectInputViewModelImpl(
      {this.id,
      this.errorText,
      this.labelText,
      this.hintText,
      this.infoText,
      this.value,
      this.options,
      this.isHidden = false,
      this.isReadOnly = false,
      this.isDisabled = false});

  @override
  final dynamic id;
  @override
  final String? errorText;
  @override
  final String? labelText;
  @override
  final String? hintText;
  @override
  final String? infoText;
  @override
  final dynamic value;

  /// The list of options to select from.
  ///
  /// This list can be empty in cases where a select control doesn't offer
  /// a list of options, rather generating the options and displaying them
  /// dynamically. (e.g. Loading a list from the server dynamically, or
  /// displaying a date picker for the user to select, etc...)
  @override
  final List<SelectOptionViewModel>? options;
  @override
  @JsonKey()
  final bool isHidden;
  @override
  @JsonKey()
  final bool isReadOnly;
  @override
  @JsonKey()
  final bool isDisabled;

  @override
  String toString() {
    return 'InputViewModel.singleSelect(id: $id, errorText: $errorText, labelText: $labelText, hintText: $hintText, infoText: $infoText, value: $value, options: $options, isHidden: $isHidden, isReadOnly: $isReadOnly, isDisabled: $isDisabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleSelectInputViewModelImpl &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText) &&
            (identical(other.labelText, labelText) ||
                other.labelText == labelText) &&
            (identical(other.hintText, hintText) ||
                other.hintText == hintText) &&
            (identical(other.infoText, infoText) ||
                other.infoText == infoText) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.options, options) &&
            (identical(other.isHidden, isHidden) ||
                other.isHidden == isHidden) &&
            (identical(other.isReadOnly, isReadOnly) ||
                other.isReadOnly == isReadOnly) &&
            (identical(other.isDisabled, isDisabled) ||
                other.isDisabled == isDisabled));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      errorText,
      labelText,
      hintText,
      infoText,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(options),
      isHidden,
      isReadOnly,
      isDisabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SingleSelectInputViewModelImplCopyWith<_$SingleSelectInputViewModelImpl>
      get copyWith => __$$SingleSelectInputViewModelImplCopyWithImpl<
          _$SingleSelectInputViewModelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            dynamic id,
            String? labelText,
            String? hintText,
            String? infoText,
            bool showInfoTextWhenFocusedOnly,
            String? errorText,
            bool swapLabelAndHintTextWhenUnfocused,
            String inputValue,
            TextInputAction? textInputAction,
            TextCapitalization? textCapitalization,
            String? suffixIconAsset,
            String? obscuredSuffixIconAsset,
            bool isInputObscured,
            String obscuringCharacter,
            TextInputType? textInputType,
            bool isReadOnly,
            bool isHidden,
            bool isDisabled,
            bool isHighlighted,
            bool isSuggestionInput,
            int maxLines,
            bool isAutoFocused,
            bool? showCursorOnlyOnFocus,
            int? maxLength,
            AutovalidateMode? autoValidateMode,
            List<TextInputFormatter>? inputFormatters)
        text,
    required TResult Function(
            dynamic id,
            String? errorText,
            String? labelText,
            String? hintText,
            String? infoText,
            dynamic value,
            List<SelectOptionViewModel>? options,
            bool isHidden,
            bool isReadOnly,
            bool isDisabled)
        singleSelect,
    required TResult Function(
            dynamic id,
            String? errorText,
            String? labelText,
            String? hintText,
            List<dynamic>? values,
            List<SelectOptionViewModel>? options)
        multipleSelect,
    required TResult Function(
            dynamic id, bool value, String label, String? errorText)
        toggledValue,
  }) {
    return singleSelect(id, errorText, labelText, hintText, infoText, value,
        options, isHidden, isReadOnly, isDisabled);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            dynamic id,
            String? labelText,
            String? hintText,
            String? infoText,
            bool showInfoTextWhenFocusedOnly,
            String? errorText,
            bool swapLabelAndHintTextWhenUnfocused,
            String inputValue,
            TextInputAction? textInputAction,
            TextCapitalization? textCapitalization,
            String? suffixIconAsset,
            String? obscuredSuffixIconAsset,
            bool isInputObscured,
            String obscuringCharacter,
            TextInputType? textInputType,
            bool isReadOnly,
            bool isHidden,
            bool isDisabled,
            bool isHighlighted,
            bool isSuggestionInput,
            int maxLines,
            bool isAutoFocused,
            bool? showCursorOnlyOnFocus,
            int? maxLength,
            AutovalidateMode? autoValidateMode,
            List<TextInputFormatter>? inputFormatters)?
        text,
    TResult? Function(
            dynamic id,
            String? errorText,
            String? labelText,
            String? hintText,
            String? infoText,
            dynamic value,
            List<SelectOptionViewModel>? options,
            bool isHidden,
            bool isReadOnly,
            bool isDisabled)?
        singleSelect,
    TResult? Function(
            dynamic id,
            String? errorText,
            String? labelText,
            String? hintText,
            List<dynamic>? values,
            List<SelectOptionViewModel>? options)?
        multipleSelect,
    TResult? Function(dynamic id, bool value, String label, String? errorText)?
        toggledValue,
  }) {
    return singleSelect?.call(id, errorText, labelText, hintText, infoText,
        value, options, isHidden, isReadOnly, isDisabled);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            dynamic id,
            String? labelText,
            String? hintText,
            String? infoText,
            bool showInfoTextWhenFocusedOnly,
            String? errorText,
            bool swapLabelAndHintTextWhenUnfocused,
            String inputValue,
            TextInputAction? textInputAction,
            TextCapitalization? textCapitalization,
            String? suffixIconAsset,
            String? obscuredSuffixIconAsset,
            bool isInputObscured,
            String obscuringCharacter,
            TextInputType? textInputType,
            bool isReadOnly,
            bool isHidden,
            bool isDisabled,
            bool isHighlighted,
            bool isSuggestionInput,
            int maxLines,
            bool isAutoFocused,
            bool? showCursorOnlyOnFocus,
            int? maxLength,
            AutovalidateMode? autoValidateMode,
            List<TextInputFormatter>? inputFormatters)?
        text,
    TResult Function(
            dynamic id,
            String? errorText,
            String? labelText,
            String? hintText,
            String? infoText,
            dynamic value,
            List<SelectOptionViewModel>? options,
            bool isHidden,
            bool isReadOnly,
            bool isDisabled)?
        singleSelect,
    TResult Function(
            dynamic id,
            String? errorText,
            String? labelText,
            String? hintText,
            List<dynamic>? values,
            List<SelectOptionViewModel>? options)?
        multipleSelect,
    TResult Function(dynamic id, bool value, String label, String? errorText)?
        toggledValue,
    required TResult orElse(),
  }) {
    if (singleSelect != null) {
      return singleSelect(id, errorText, labelText, hintText, infoText, value,
          options, isHidden, isReadOnly, isDisabled);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextInputViewModel value) text,
    required TResult Function(SingleSelectInputViewModel value) singleSelect,
    required TResult Function(MultipleSelectInputViewModel value)
        multipleSelect,
    required TResult Function(ToggledValueInputViewModel value) toggledValue,
  }) {
    return singleSelect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextInputViewModel value)? text,
    TResult? Function(SingleSelectInputViewModel value)? singleSelect,
    TResult? Function(MultipleSelectInputViewModel value)? multipleSelect,
    TResult? Function(ToggledValueInputViewModel value)? toggledValue,
  }) {
    return singleSelect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextInputViewModel value)? text,
    TResult Function(SingleSelectInputViewModel value)? singleSelect,
    TResult Function(MultipleSelectInputViewModel value)? multipleSelect,
    TResult Function(ToggledValueInputViewModel value)? toggledValue,
    required TResult orElse(),
  }) {
    if (singleSelect != null) {
      return singleSelect(this);
    }
    return orElse();
  }
}

abstract class SingleSelectInputViewModel implements InputViewModel {
  const factory SingleSelectInputViewModel(
      {final dynamic id,
      final String? errorText,
      final String? labelText,
      final String? hintText,
      final String? infoText,
      final dynamic value,
      final List<SelectOptionViewModel>? options,
      final bool isHidden,
      final bool isReadOnly,
      final bool isDisabled}) = _$SingleSelectInputViewModelImpl;

  @override
  dynamic get id;
  @override
  String? get errorText;
  String? get labelText;
  String? get hintText;
  String? get infoText;
  dynamic get value;

  /// The list of options to select from.
  ///
  /// This list can be empty in cases where a select control doesn't offer
  /// a list of options, rather generating the options and displaying them
  /// dynamically. (e.g. Loading a list from the server dynamically, or
  /// displaying a date picker for the user to select, etc...)
  List<SelectOptionViewModel>? get options;
  bool get isHidden;
  bool get isReadOnly;
  bool get isDisabled;
  @override
  @JsonKey(ignore: true)
  _$$SingleSelectInputViewModelImplCopyWith<_$SingleSelectInputViewModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MultipleSelectInputViewModelImplCopyWith<$Res>
    implements $InputViewModelCopyWith<$Res> {
  factory _$$MultipleSelectInputViewModelImplCopyWith(
          _$MultipleSelectInputViewModelImpl value,
          $Res Function(_$MultipleSelectInputViewModelImpl) then) =
      __$$MultipleSelectInputViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic id,
      String? errorText,
      String? labelText,
      String? hintText,
      List<dynamic>? values,
      List<SelectOptionViewModel>? options});
}

/// @nodoc
class __$$MultipleSelectInputViewModelImplCopyWithImpl<$Res>
    extends _$InputViewModelCopyWithImpl<$Res,
        _$MultipleSelectInputViewModelImpl>
    implements _$$MultipleSelectInputViewModelImplCopyWith<$Res> {
  __$$MultipleSelectInputViewModelImplCopyWithImpl(
      _$MultipleSelectInputViewModelImpl _value,
      $Res Function(_$MultipleSelectInputViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? errorText = freezed,
    Object? labelText = freezed,
    Object? hintText = freezed,
    Object? values = freezed,
    Object? options = freezed,
  }) {
    return _then(_$MultipleSelectInputViewModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      errorText: freezed == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
      labelText: freezed == labelText
          ? _value.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
              as String?,
      hintText: freezed == hintText
          ? _value.hintText
          : hintText // ignore: cast_nullable_to_non_nullable
              as String?,
      values: freezed == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<SelectOptionViewModel>?,
    ));
  }
}

/// @nodoc

class _$MultipleSelectInputViewModelImpl
    implements MultipleSelectInputViewModel {
  const _$MultipleSelectInputViewModelImpl(
      {this.id,
      this.errorText,
      this.labelText,
      this.hintText,
      this.values,
      this.options});

  @override
  final dynamic id;
  @override
  final String? errorText;
  @override
  final String? labelText;
  @override
  final String? hintText;
  @override
  final List<dynamic>? values;
  @override
  final List<SelectOptionViewModel>? options;

  @override
  String toString() {
    return 'InputViewModel.multipleSelect(id: $id, errorText: $errorText, labelText: $labelText, hintText: $hintText, values: $values, options: $options)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultipleSelectInputViewModelImpl &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText) &&
            (identical(other.labelText, labelText) ||
                other.labelText == labelText) &&
            (identical(other.hintText, hintText) ||
                other.hintText == hintText) &&
            const DeepCollectionEquality().equals(other.values, values) &&
            const DeepCollectionEquality().equals(other.options, options));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      errorText,
      labelText,
      hintText,
      const DeepCollectionEquality().hash(values),
      const DeepCollectionEquality().hash(options));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MultipleSelectInputViewModelImplCopyWith<
          _$MultipleSelectInputViewModelImpl>
      get copyWith => __$$MultipleSelectInputViewModelImplCopyWithImpl<
          _$MultipleSelectInputViewModelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            dynamic id,
            String? labelText,
            String? hintText,
            String? infoText,
            bool showInfoTextWhenFocusedOnly,
            String? errorText,
            bool swapLabelAndHintTextWhenUnfocused,
            String inputValue,
            TextInputAction? textInputAction,
            TextCapitalization? textCapitalization,
            String? suffixIconAsset,
            String? obscuredSuffixIconAsset,
            bool isInputObscured,
            String obscuringCharacter,
            TextInputType? textInputType,
            bool isReadOnly,
            bool isHidden,
            bool isDisabled,
            bool isHighlighted,
            bool isSuggestionInput,
            int maxLines,
            bool isAutoFocused,
            bool? showCursorOnlyOnFocus,
            int? maxLength,
            AutovalidateMode? autoValidateMode,
            List<TextInputFormatter>? inputFormatters)
        text,
    required TResult Function(
            dynamic id,
            String? errorText,
            String? labelText,
            String? hintText,
            String? infoText,
            dynamic value,
            List<SelectOptionViewModel>? options,
            bool isHidden,
            bool isReadOnly,
            bool isDisabled)
        singleSelect,
    required TResult Function(
            dynamic id,
            String? errorText,
            String? labelText,
            String? hintText,
            List<dynamic>? values,
            List<SelectOptionViewModel>? options)
        multipleSelect,
    required TResult Function(
            dynamic id, bool value, String label, String? errorText)
        toggledValue,
  }) {
    return multipleSelect(id, errorText, labelText, hintText, values, options);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            dynamic id,
            String? labelText,
            String? hintText,
            String? infoText,
            bool showInfoTextWhenFocusedOnly,
            String? errorText,
            bool swapLabelAndHintTextWhenUnfocused,
            String inputValue,
            TextInputAction? textInputAction,
            TextCapitalization? textCapitalization,
            String? suffixIconAsset,
            String? obscuredSuffixIconAsset,
            bool isInputObscured,
            String obscuringCharacter,
            TextInputType? textInputType,
            bool isReadOnly,
            bool isHidden,
            bool isDisabled,
            bool isHighlighted,
            bool isSuggestionInput,
            int maxLines,
            bool isAutoFocused,
            bool? showCursorOnlyOnFocus,
            int? maxLength,
            AutovalidateMode? autoValidateMode,
            List<TextInputFormatter>? inputFormatters)?
        text,
    TResult? Function(
            dynamic id,
            String? errorText,
            String? labelText,
            String? hintText,
            String? infoText,
            dynamic value,
            List<SelectOptionViewModel>? options,
            bool isHidden,
            bool isReadOnly,
            bool isDisabled)?
        singleSelect,
    TResult? Function(
            dynamic id,
            String? errorText,
            String? labelText,
            String? hintText,
            List<dynamic>? values,
            List<SelectOptionViewModel>? options)?
        multipleSelect,
    TResult? Function(dynamic id, bool value, String label, String? errorText)?
        toggledValue,
  }) {
    return multipleSelect?.call(
        id, errorText, labelText, hintText, values, options);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            dynamic id,
            String? labelText,
            String? hintText,
            String? infoText,
            bool showInfoTextWhenFocusedOnly,
            String? errorText,
            bool swapLabelAndHintTextWhenUnfocused,
            String inputValue,
            TextInputAction? textInputAction,
            TextCapitalization? textCapitalization,
            String? suffixIconAsset,
            String? obscuredSuffixIconAsset,
            bool isInputObscured,
            String obscuringCharacter,
            TextInputType? textInputType,
            bool isReadOnly,
            bool isHidden,
            bool isDisabled,
            bool isHighlighted,
            bool isSuggestionInput,
            int maxLines,
            bool isAutoFocused,
            bool? showCursorOnlyOnFocus,
            int? maxLength,
            AutovalidateMode? autoValidateMode,
            List<TextInputFormatter>? inputFormatters)?
        text,
    TResult Function(
            dynamic id,
            String? errorText,
            String? labelText,
            String? hintText,
            String? infoText,
            dynamic value,
            List<SelectOptionViewModel>? options,
            bool isHidden,
            bool isReadOnly,
            bool isDisabled)?
        singleSelect,
    TResult Function(
            dynamic id,
            String? errorText,
            String? labelText,
            String? hintText,
            List<dynamic>? values,
            List<SelectOptionViewModel>? options)?
        multipleSelect,
    TResult Function(dynamic id, bool value, String label, String? errorText)?
        toggledValue,
    required TResult orElse(),
  }) {
    if (multipleSelect != null) {
      return multipleSelect(
          id, errorText, labelText, hintText, values, options);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextInputViewModel value) text,
    required TResult Function(SingleSelectInputViewModel value) singleSelect,
    required TResult Function(MultipleSelectInputViewModel value)
        multipleSelect,
    required TResult Function(ToggledValueInputViewModel value) toggledValue,
  }) {
    return multipleSelect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextInputViewModel value)? text,
    TResult? Function(SingleSelectInputViewModel value)? singleSelect,
    TResult? Function(MultipleSelectInputViewModel value)? multipleSelect,
    TResult? Function(ToggledValueInputViewModel value)? toggledValue,
  }) {
    return multipleSelect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextInputViewModel value)? text,
    TResult Function(SingleSelectInputViewModel value)? singleSelect,
    TResult Function(MultipleSelectInputViewModel value)? multipleSelect,
    TResult Function(ToggledValueInputViewModel value)? toggledValue,
    required TResult orElse(),
  }) {
    if (multipleSelect != null) {
      return multipleSelect(this);
    }
    return orElse();
  }
}

abstract class MultipleSelectInputViewModel implements InputViewModel {
  const factory MultipleSelectInputViewModel(
          {final dynamic id,
          final String? errorText,
          final String? labelText,
          final String? hintText,
          final List<dynamic>? values,
          final List<SelectOptionViewModel>? options}) =
      _$MultipleSelectInputViewModelImpl;

  @override
  dynamic get id;
  @override
  String? get errorText;
  String? get labelText;
  String? get hintText;
  List<dynamic>? get values;
  List<SelectOptionViewModel>? get options;
  @override
  @JsonKey(ignore: true)
  _$$MultipleSelectInputViewModelImplCopyWith<
          _$MultipleSelectInputViewModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggledValueInputViewModelImplCopyWith<$Res>
    implements $InputViewModelCopyWith<$Res> {
  factory _$$ToggledValueInputViewModelImplCopyWith(
          _$ToggledValueInputViewModelImpl value,
          $Res Function(_$ToggledValueInputViewModelImpl) then) =
      __$$ToggledValueInputViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic id, bool value, String label, String? errorText});
}

/// @nodoc
class __$$ToggledValueInputViewModelImplCopyWithImpl<$Res>
    extends _$InputViewModelCopyWithImpl<$Res, _$ToggledValueInputViewModelImpl>
    implements _$$ToggledValueInputViewModelImplCopyWith<$Res> {
  __$$ToggledValueInputViewModelImplCopyWithImpl(
      _$ToggledValueInputViewModelImpl _value,
      $Res Function(_$ToggledValueInputViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? value = null,
    Object? label = null,
    Object? errorText = freezed,
  }) {
    return _then(_$ToggledValueInputViewModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      errorText: freezed == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ToggledValueInputViewModelImpl implements ToggledValueInputViewModel {
  const _$ToggledValueInputViewModelImpl(
      {this.id, this.value = false, required this.label, this.errorText});

  @override
  final dynamic id;
  @override
  @JsonKey()
  final bool value;
  @override
  final String label;
  @override
  final String? errorText;

  @override
  String toString() {
    return 'InputViewModel.toggledValue(id: $id, value: $value, label: $label, errorText: $errorText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggledValueInputViewModelImpl &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(id), value, label, errorText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggledValueInputViewModelImplCopyWith<_$ToggledValueInputViewModelImpl>
      get copyWith => __$$ToggledValueInputViewModelImplCopyWithImpl<
          _$ToggledValueInputViewModelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            dynamic id,
            String? labelText,
            String? hintText,
            String? infoText,
            bool showInfoTextWhenFocusedOnly,
            String? errorText,
            bool swapLabelAndHintTextWhenUnfocused,
            String inputValue,
            TextInputAction? textInputAction,
            TextCapitalization? textCapitalization,
            String? suffixIconAsset,
            String? obscuredSuffixIconAsset,
            bool isInputObscured,
            String obscuringCharacter,
            TextInputType? textInputType,
            bool isReadOnly,
            bool isHidden,
            bool isDisabled,
            bool isHighlighted,
            bool isSuggestionInput,
            int maxLines,
            bool isAutoFocused,
            bool? showCursorOnlyOnFocus,
            int? maxLength,
            AutovalidateMode? autoValidateMode,
            List<TextInputFormatter>? inputFormatters)
        text,
    required TResult Function(
            dynamic id,
            String? errorText,
            String? labelText,
            String? hintText,
            String? infoText,
            dynamic value,
            List<SelectOptionViewModel>? options,
            bool isHidden,
            bool isReadOnly,
            bool isDisabled)
        singleSelect,
    required TResult Function(
            dynamic id,
            String? errorText,
            String? labelText,
            String? hintText,
            List<dynamic>? values,
            List<SelectOptionViewModel>? options)
        multipleSelect,
    required TResult Function(
            dynamic id, bool value, String label, String? errorText)
        toggledValue,
  }) {
    return toggledValue(id, value, label, errorText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            dynamic id,
            String? labelText,
            String? hintText,
            String? infoText,
            bool showInfoTextWhenFocusedOnly,
            String? errorText,
            bool swapLabelAndHintTextWhenUnfocused,
            String inputValue,
            TextInputAction? textInputAction,
            TextCapitalization? textCapitalization,
            String? suffixIconAsset,
            String? obscuredSuffixIconAsset,
            bool isInputObscured,
            String obscuringCharacter,
            TextInputType? textInputType,
            bool isReadOnly,
            bool isHidden,
            bool isDisabled,
            bool isHighlighted,
            bool isSuggestionInput,
            int maxLines,
            bool isAutoFocused,
            bool? showCursorOnlyOnFocus,
            int? maxLength,
            AutovalidateMode? autoValidateMode,
            List<TextInputFormatter>? inputFormatters)?
        text,
    TResult? Function(
            dynamic id,
            String? errorText,
            String? labelText,
            String? hintText,
            String? infoText,
            dynamic value,
            List<SelectOptionViewModel>? options,
            bool isHidden,
            bool isReadOnly,
            bool isDisabled)?
        singleSelect,
    TResult? Function(
            dynamic id,
            String? errorText,
            String? labelText,
            String? hintText,
            List<dynamic>? values,
            List<SelectOptionViewModel>? options)?
        multipleSelect,
    TResult? Function(dynamic id, bool value, String label, String? errorText)?
        toggledValue,
  }) {
    return toggledValue?.call(id, value, label, errorText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            dynamic id,
            String? labelText,
            String? hintText,
            String? infoText,
            bool showInfoTextWhenFocusedOnly,
            String? errorText,
            bool swapLabelAndHintTextWhenUnfocused,
            String inputValue,
            TextInputAction? textInputAction,
            TextCapitalization? textCapitalization,
            String? suffixIconAsset,
            String? obscuredSuffixIconAsset,
            bool isInputObscured,
            String obscuringCharacter,
            TextInputType? textInputType,
            bool isReadOnly,
            bool isHidden,
            bool isDisabled,
            bool isHighlighted,
            bool isSuggestionInput,
            int maxLines,
            bool isAutoFocused,
            bool? showCursorOnlyOnFocus,
            int? maxLength,
            AutovalidateMode? autoValidateMode,
            List<TextInputFormatter>? inputFormatters)?
        text,
    TResult Function(
            dynamic id,
            String? errorText,
            String? labelText,
            String? hintText,
            String? infoText,
            dynamic value,
            List<SelectOptionViewModel>? options,
            bool isHidden,
            bool isReadOnly,
            bool isDisabled)?
        singleSelect,
    TResult Function(
            dynamic id,
            String? errorText,
            String? labelText,
            String? hintText,
            List<dynamic>? values,
            List<SelectOptionViewModel>? options)?
        multipleSelect,
    TResult Function(dynamic id, bool value, String label, String? errorText)?
        toggledValue,
    required TResult orElse(),
  }) {
    if (toggledValue != null) {
      return toggledValue(id, value, label, errorText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextInputViewModel value) text,
    required TResult Function(SingleSelectInputViewModel value) singleSelect,
    required TResult Function(MultipleSelectInputViewModel value)
        multipleSelect,
    required TResult Function(ToggledValueInputViewModel value) toggledValue,
  }) {
    return toggledValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextInputViewModel value)? text,
    TResult? Function(SingleSelectInputViewModel value)? singleSelect,
    TResult? Function(MultipleSelectInputViewModel value)? multipleSelect,
    TResult? Function(ToggledValueInputViewModel value)? toggledValue,
  }) {
    return toggledValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextInputViewModel value)? text,
    TResult Function(SingleSelectInputViewModel value)? singleSelect,
    TResult Function(MultipleSelectInputViewModel value)? multipleSelect,
    TResult Function(ToggledValueInputViewModel value)? toggledValue,
    required TResult orElse(),
  }) {
    if (toggledValue != null) {
      return toggledValue(this);
    }
    return orElse();
  }
}

abstract class ToggledValueInputViewModel implements InputViewModel {
  const factory ToggledValueInputViewModel(
      {final dynamic id,
      final bool value,
      required final String label,
      final String? errorText}) = _$ToggledValueInputViewModelImpl;

  @override
  dynamic get id;
  bool get value;
  String get label;
  @override
  String? get errorText;
  @override
  @JsonKey(ignore: true)
  _$$ToggledValueInputViewModelImplCopyWith<_$ToggledValueInputViewModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SelectOptionViewModel {
  /// The value of the option.
  ///
  /// This can be null to support ui-only options that can have no values.
  dynamic get value => throw _privateConstructorUsedError;

  /// The text appearing as the option
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SelectOptionViewModelCopyWith<SelectOptionViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectOptionViewModelCopyWith<$Res> {
  factory $SelectOptionViewModelCopyWith(SelectOptionViewModel value,
          $Res Function(SelectOptionViewModel) then) =
      _$SelectOptionViewModelCopyWithImpl<$Res, SelectOptionViewModel>;
  @useResult
  $Res call({dynamic value, String name});
}

/// @nodoc
class _$SelectOptionViewModelCopyWithImpl<$Res,
        $Val extends SelectOptionViewModel>
    implements $SelectOptionViewModelCopyWith<$Res> {
  _$SelectOptionViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelectOptionViewModelImplCopyWith<$Res>
    implements $SelectOptionViewModelCopyWith<$Res> {
  factory _$$SelectOptionViewModelImplCopyWith(
          _$SelectOptionViewModelImpl value,
          $Res Function(_$SelectOptionViewModelImpl) then) =
      __$$SelectOptionViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic value, String name});
}

/// @nodoc
class __$$SelectOptionViewModelImplCopyWithImpl<$Res>
    extends _$SelectOptionViewModelCopyWithImpl<$Res,
        _$SelectOptionViewModelImpl>
    implements _$$SelectOptionViewModelImplCopyWith<$Res> {
  __$$SelectOptionViewModelImplCopyWithImpl(_$SelectOptionViewModelImpl _value,
      $Res Function(_$SelectOptionViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? name = null,
  }) {
    return _then(_$SelectOptionViewModelImpl(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SelectOptionViewModelImpl implements _SelectOptionViewModel {
  const _$SelectOptionViewModelImpl({this.value, required this.name});

  /// The value of the option.
  ///
  /// This can be null to support ui-only options that can have no values.
  @override
  final dynamic value;

  /// The text appearing as the option
  @override
  final String name;

  @override
  String toString() {
    return 'SelectOptionViewModel(value: $value, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectOptionViewModelImpl &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(value), name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectOptionViewModelImplCopyWith<_$SelectOptionViewModelImpl>
      get copyWith => __$$SelectOptionViewModelImplCopyWithImpl<
          _$SelectOptionViewModelImpl>(this, _$identity);
}

abstract class _SelectOptionViewModel implements SelectOptionViewModel {
  const factory _SelectOptionViewModel(
      {final dynamic value,
      required final String name}) = _$SelectOptionViewModelImpl;

  @override

  /// The value of the option.
  ///
  /// This can be null to support ui-only options that can have no values.
  dynamic get value;
  @override

  /// The text appearing as the option
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$SelectOptionViewModelImplCopyWith<_$SelectOptionViewModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
