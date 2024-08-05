// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FormAction? eventAction) performActionStarted,
    required TResult Function() validateFieldStarted,
    required TResult Function(
            bool initializeWithValidationErrors,
            bool isReinitializing,
            Map<FormFieldId, dynamic>? formData,
            dynamic entityId,
            String? title)
        initializeFormStarted,
    required TResult Function(FormFieldId fieldId, String? inputValue)
        changeInputStarted,
    required TResult Function(FormFieldId fieldId, String? inputValue)
        exitInputTapped,
    required TResult Function(FormFieldId fieldId) toggleInputTapped,
    required TResult Function(FormFieldId fieldId, dynamic value)
        selectOptionTapped,
    required TResult Function(Map<FormFieldId, String> validationMap)
        updateValidationStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FormAction? eventAction)? performActionStarted,
    TResult? Function()? validateFieldStarted,
    TResult? Function(
            bool initializeWithValidationErrors,
            bool isReinitializing,
            Map<FormFieldId, dynamic>? formData,
            dynamic entityId,
            String? title)?
        initializeFormStarted,
    TResult? Function(FormFieldId fieldId, String? inputValue)?
        changeInputStarted,
    TResult? Function(FormFieldId fieldId, String? inputValue)? exitInputTapped,
    TResult? Function(FormFieldId fieldId)? toggleInputTapped,
    TResult? Function(FormFieldId fieldId, dynamic value)? selectOptionTapped,
    TResult? Function(Map<FormFieldId, String> validationMap)?
        updateValidationStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FormAction? eventAction)? performActionStarted,
    TResult Function()? validateFieldStarted,
    TResult Function(
            bool initializeWithValidationErrors,
            bool isReinitializing,
            Map<FormFieldId, dynamic>? formData,
            dynamic entityId,
            String? title)?
        initializeFormStarted,
    TResult Function(FormFieldId fieldId, String? inputValue)?
        changeInputStarted,
    TResult Function(FormFieldId fieldId, String? inputValue)? exitInputTapped,
    TResult Function(FormFieldId fieldId)? toggleInputTapped,
    TResult Function(FormFieldId fieldId, dynamic value)? selectOptionTapped,
    TResult Function(Map<FormFieldId, String> validationMap)?
        updateValidationStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FormPerformActionStarted value)
        performActionStarted,
    required TResult Function(_FormValidateFieldStarted value)
        validateFieldStarted,
    required TResult Function(_FormInitializeFormStarted value)
        initializeFormStarted,
    required TResult Function(_FormChangeInputStarted value) changeInputStarted,
    required TResult Function(_FormExitInputTapped value) exitInputTapped,
    required TResult Function(_FormToggleInputTapped value) toggleInputTapped,
    required TResult Function(_FormSelectOptionTapped value) selectOptionTapped,
    required TResult Function(_FormUpdateValidationStarted value)
        updateValidationStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FormPerformActionStarted value)? performActionStarted,
    TResult? Function(_FormValidateFieldStarted value)? validateFieldStarted,
    TResult? Function(_FormInitializeFormStarted value)? initializeFormStarted,
    TResult? Function(_FormChangeInputStarted value)? changeInputStarted,
    TResult? Function(_FormExitInputTapped value)? exitInputTapped,
    TResult? Function(_FormToggleInputTapped value)? toggleInputTapped,
    TResult? Function(_FormSelectOptionTapped value)? selectOptionTapped,
    TResult? Function(_FormUpdateValidationStarted value)?
        updateValidationStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FormPerformActionStarted value)? performActionStarted,
    TResult Function(_FormValidateFieldStarted value)? validateFieldStarted,
    TResult Function(_FormInitializeFormStarted value)? initializeFormStarted,
    TResult Function(_FormChangeInputStarted value)? changeInputStarted,
    TResult Function(_FormExitInputTapped value)? exitInputTapped,
    TResult Function(_FormToggleInputTapped value)? toggleInputTapped,
    TResult Function(_FormSelectOptionTapped value)? selectOptionTapped,
    TResult Function(_FormUpdateValidationStarted value)?
        updateValidationStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormEventCopyWith<$Res> {
  factory $FormEventCopyWith(FormEvent value, $Res Function(FormEvent) then) =
      _$FormEventCopyWithImpl<$Res, FormEvent>;
}

/// @nodoc
class _$FormEventCopyWithImpl<$Res, $Val extends FormEvent>
    implements $FormEventCopyWith<$Res> {
  _$FormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FormPerformActionStartedImplCopyWith<$Res> {
  factory _$$FormPerformActionStartedImplCopyWith(
          _$FormPerformActionStartedImpl value,
          $Res Function(_$FormPerformActionStartedImpl) then) =
      __$$FormPerformActionStartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FormAction? eventAction});
}

/// @nodoc
class __$$FormPerformActionStartedImplCopyWithImpl<$Res>
    extends _$FormEventCopyWithImpl<$Res, _$FormPerformActionStartedImpl>
    implements _$$FormPerformActionStartedImplCopyWith<$Res> {
  __$$FormPerformActionStartedImplCopyWithImpl(
      _$FormPerformActionStartedImpl _value,
      $Res Function(_$FormPerformActionStartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventAction = freezed,
  }) {
    return _then(_$FormPerformActionStartedImpl(
      eventAction: freezed == eventAction
          ? _value.eventAction
          : eventAction // ignore: cast_nullable_to_non_nullable
              as FormAction?,
    ));
  }
}

/// @nodoc

class _$FormPerformActionStartedImpl implements _FormPerformActionStarted {
  const _$FormPerformActionStartedImpl({this.eventAction});

  @override
  final FormAction? eventAction;

  @override
  String toString() {
    return 'FormEvent.performActionStarted(eventAction: $eventAction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormPerformActionStartedImpl &&
            (identical(other.eventAction, eventAction) ||
                other.eventAction == eventAction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventAction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormPerformActionStartedImplCopyWith<_$FormPerformActionStartedImpl>
      get copyWith => __$$FormPerformActionStartedImplCopyWithImpl<
          _$FormPerformActionStartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FormAction? eventAction) performActionStarted,
    required TResult Function() validateFieldStarted,
    required TResult Function(
            bool initializeWithValidationErrors,
            bool isReinitializing,
            Map<FormFieldId, dynamic>? formData,
            dynamic entityId,
            String? title)
        initializeFormStarted,
    required TResult Function(FormFieldId fieldId, String? inputValue)
        changeInputStarted,
    required TResult Function(FormFieldId fieldId, String? inputValue)
        exitInputTapped,
    required TResult Function(FormFieldId fieldId) toggleInputTapped,
    required TResult Function(FormFieldId fieldId, dynamic value)
        selectOptionTapped,
    required TResult Function(Map<FormFieldId, String> validationMap)
        updateValidationStarted,
  }) {
    return performActionStarted(eventAction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FormAction? eventAction)? performActionStarted,
    TResult? Function()? validateFieldStarted,
    TResult? Function(
            bool initializeWithValidationErrors,
            bool isReinitializing,
            Map<FormFieldId, dynamic>? formData,
            dynamic entityId,
            String? title)?
        initializeFormStarted,
    TResult? Function(FormFieldId fieldId, String? inputValue)?
        changeInputStarted,
    TResult? Function(FormFieldId fieldId, String? inputValue)? exitInputTapped,
    TResult? Function(FormFieldId fieldId)? toggleInputTapped,
    TResult? Function(FormFieldId fieldId, dynamic value)? selectOptionTapped,
    TResult? Function(Map<FormFieldId, String> validationMap)?
        updateValidationStarted,
  }) {
    return performActionStarted?.call(eventAction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FormAction? eventAction)? performActionStarted,
    TResult Function()? validateFieldStarted,
    TResult Function(
            bool initializeWithValidationErrors,
            bool isReinitializing,
            Map<FormFieldId, dynamic>? formData,
            dynamic entityId,
            String? title)?
        initializeFormStarted,
    TResult Function(FormFieldId fieldId, String? inputValue)?
        changeInputStarted,
    TResult Function(FormFieldId fieldId, String? inputValue)? exitInputTapped,
    TResult Function(FormFieldId fieldId)? toggleInputTapped,
    TResult Function(FormFieldId fieldId, dynamic value)? selectOptionTapped,
    TResult Function(Map<FormFieldId, String> validationMap)?
        updateValidationStarted,
    required TResult orElse(),
  }) {
    if (performActionStarted != null) {
      return performActionStarted(eventAction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FormPerformActionStarted value)
        performActionStarted,
    required TResult Function(_FormValidateFieldStarted value)
        validateFieldStarted,
    required TResult Function(_FormInitializeFormStarted value)
        initializeFormStarted,
    required TResult Function(_FormChangeInputStarted value) changeInputStarted,
    required TResult Function(_FormExitInputTapped value) exitInputTapped,
    required TResult Function(_FormToggleInputTapped value) toggleInputTapped,
    required TResult Function(_FormSelectOptionTapped value) selectOptionTapped,
    required TResult Function(_FormUpdateValidationStarted value)
        updateValidationStarted,
  }) {
    return performActionStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FormPerformActionStarted value)? performActionStarted,
    TResult? Function(_FormValidateFieldStarted value)? validateFieldStarted,
    TResult? Function(_FormInitializeFormStarted value)? initializeFormStarted,
    TResult? Function(_FormChangeInputStarted value)? changeInputStarted,
    TResult? Function(_FormExitInputTapped value)? exitInputTapped,
    TResult? Function(_FormToggleInputTapped value)? toggleInputTapped,
    TResult? Function(_FormSelectOptionTapped value)? selectOptionTapped,
    TResult? Function(_FormUpdateValidationStarted value)?
        updateValidationStarted,
  }) {
    return performActionStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FormPerformActionStarted value)? performActionStarted,
    TResult Function(_FormValidateFieldStarted value)? validateFieldStarted,
    TResult Function(_FormInitializeFormStarted value)? initializeFormStarted,
    TResult Function(_FormChangeInputStarted value)? changeInputStarted,
    TResult Function(_FormExitInputTapped value)? exitInputTapped,
    TResult Function(_FormToggleInputTapped value)? toggleInputTapped,
    TResult Function(_FormSelectOptionTapped value)? selectOptionTapped,
    TResult Function(_FormUpdateValidationStarted value)?
        updateValidationStarted,
    required TResult orElse(),
  }) {
    if (performActionStarted != null) {
      return performActionStarted(this);
    }
    return orElse();
  }
}

abstract class _FormPerformActionStarted implements FormEvent {
  const factory _FormPerformActionStarted({final FormAction? eventAction}) =
      _$FormPerformActionStartedImpl;

  FormAction? get eventAction;
  @JsonKey(ignore: true)
  _$$FormPerformActionStartedImplCopyWith<_$FormPerformActionStartedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FormValidateFieldStartedImplCopyWith<$Res> {
  factory _$$FormValidateFieldStartedImplCopyWith(
          _$FormValidateFieldStartedImpl value,
          $Res Function(_$FormValidateFieldStartedImpl) then) =
      __$$FormValidateFieldStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FormValidateFieldStartedImplCopyWithImpl<$Res>
    extends _$FormEventCopyWithImpl<$Res, _$FormValidateFieldStartedImpl>
    implements _$$FormValidateFieldStartedImplCopyWith<$Res> {
  __$$FormValidateFieldStartedImplCopyWithImpl(
      _$FormValidateFieldStartedImpl _value,
      $Res Function(_$FormValidateFieldStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FormValidateFieldStartedImpl implements _FormValidateFieldStarted {
  const _$FormValidateFieldStartedImpl();

  @override
  String toString() {
    return 'FormEvent.validateFieldStarted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormValidateFieldStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FormAction? eventAction) performActionStarted,
    required TResult Function() validateFieldStarted,
    required TResult Function(
            bool initializeWithValidationErrors,
            bool isReinitializing,
            Map<FormFieldId, dynamic>? formData,
            dynamic entityId,
            String? title)
        initializeFormStarted,
    required TResult Function(FormFieldId fieldId, String? inputValue)
        changeInputStarted,
    required TResult Function(FormFieldId fieldId, String? inputValue)
        exitInputTapped,
    required TResult Function(FormFieldId fieldId) toggleInputTapped,
    required TResult Function(FormFieldId fieldId, dynamic value)
        selectOptionTapped,
    required TResult Function(Map<FormFieldId, String> validationMap)
        updateValidationStarted,
  }) {
    return validateFieldStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FormAction? eventAction)? performActionStarted,
    TResult? Function()? validateFieldStarted,
    TResult? Function(
            bool initializeWithValidationErrors,
            bool isReinitializing,
            Map<FormFieldId, dynamic>? formData,
            dynamic entityId,
            String? title)?
        initializeFormStarted,
    TResult? Function(FormFieldId fieldId, String? inputValue)?
        changeInputStarted,
    TResult? Function(FormFieldId fieldId, String? inputValue)? exitInputTapped,
    TResult? Function(FormFieldId fieldId)? toggleInputTapped,
    TResult? Function(FormFieldId fieldId, dynamic value)? selectOptionTapped,
    TResult? Function(Map<FormFieldId, String> validationMap)?
        updateValidationStarted,
  }) {
    return validateFieldStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FormAction? eventAction)? performActionStarted,
    TResult Function()? validateFieldStarted,
    TResult Function(
            bool initializeWithValidationErrors,
            bool isReinitializing,
            Map<FormFieldId, dynamic>? formData,
            dynamic entityId,
            String? title)?
        initializeFormStarted,
    TResult Function(FormFieldId fieldId, String? inputValue)?
        changeInputStarted,
    TResult Function(FormFieldId fieldId, String? inputValue)? exitInputTapped,
    TResult Function(FormFieldId fieldId)? toggleInputTapped,
    TResult Function(FormFieldId fieldId, dynamic value)? selectOptionTapped,
    TResult Function(Map<FormFieldId, String> validationMap)?
        updateValidationStarted,
    required TResult orElse(),
  }) {
    if (validateFieldStarted != null) {
      return validateFieldStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FormPerformActionStarted value)
        performActionStarted,
    required TResult Function(_FormValidateFieldStarted value)
        validateFieldStarted,
    required TResult Function(_FormInitializeFormStarted value)
        initializeFormStarted,
    required TResult Function(_FormChangeInputStarted value) changeInputStarted,
    required TResult Function(_FormExitInputTapped value) exitInputTapped,
    required TResult Function(_FormToggleInputTapped value) toggleInputTapped,
    required TResult Function(_FormSelectOptionTapped value) selectOptionTapped,
    required TResult Function(_FormUpdateValidationStarted value)
        updateValidationStarted,
  }) {
    return validateFieldStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FormPerformActionStarted value)? performActionStarted,
    TResult? Function(_FormValidateFieldStarted value)? validateFieldStarted,
    TResult? Function(_FormInitializeFormStarted value)? initializeFormStarted,
    TResult? Function(_FormChangeInputStarted value)? changeInputStarted,
    TResult? Function(_FormExitInputTapped value)? exitInputTapped,
    TResult? Function(_FormToggleInputTapped value)? toggleInputTapped,
    TResult? Function(_FormSelectOptionTapped value)? selectOptionTapped,
    TResult? Function(_FormUpdateValidationStarted value)?
        updateValidationStarted,
  }) {
    return validateFieldStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FormPerformActionStarted value)? performActionStarted,
    TResult Function(_FormValidateFieldStarted value)? validateFieldStarted,
    TResult Function(_FormInitializeFormStarted value)? initializeFormStarted,
    TResult Function(_FormChangeInputStarted value)? changeInputStarted,
    TResult Function(_FormExitInputTapped value)? exitInputTapped,
    TResult Function(_FormToggleInputTapped value)? toggleInputTapped,
    TResult Function(_FormSelectOptionTapped value)? selectOptionTapped,
    TResult Function(_FormUpdateValidationStarted value)?
        updateValidationStarted,
    required TResult orElse(),
  }) {
    if (validateFieldStarted != null) {
      return validateFieldStarted(this);
    }
    return orElse();
  }
}

abstract class _FormValidateFieldStarted implements FormEvent {
  const factory _FormValidateFieldStarted() = _$FormValidateFieldStartedImpl;
}

/// @nodoc
abstract class _$$FormInitializeFormStartedImplCopyWith<$Res> {
  factory _$$FormInitializeFormStartedImplCopyWith(
          _$FormInitializeFormStartedImpl value,
          $Res Function(_$FormInitializeFormStartedImpl) then) =
      __$$FormInitializeFormStartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {bool initializeWithValidationErrors,
      bool isReinitializing,
      Map<FormFieldId, dynamic>? formData,
      dynamic entityId,
      String? title});
}

/// @nodoc
class __$$FormInitializeFormStartedImplCopyWithImpl<$Res>
    extends _$FormEventCopyWithImpl<$Res, _$FormInitializeFormStartedImpl>
    implements _$$FormInitializeFormStartedImplCopyWith<$Res> {
  __$$FormInitializeFormStartedImplCopyWithImpl(
      _$FormInitializeFormStartedImpl _value,
      $Res Function(_$FormInitializeFormStartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initializeWithValidationErrors = null,
    Object? isReinitializing = null,
    Object? formData = freezed,
    Object? entityId = freezed,
    Object? title = freezed,
  }) {
    return _then(_$FormInitializeFormStartedImpl(
      initializeWithValidationErrors: null == initializeWithValidationErrors
          ? _value.initializeWithValidationErrors
          : initializeWithValidationErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      isReinitializing: null == isReinitializing
          ? _value.isReinitializing
          : isReinitializing // ignore: cast_nullable_to_non_nullable
              as bool,
      formData: freezed == formData
          ? _value._formData
          : formData // ignore: cast_nullable_to_non_nullable
              as Map<FormFieldId, dynamic>?,
      entityId: freezed == entityId
          ? _value.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FormInitializeFormStartedImpl implements _FormInitializeFormStarted {
  const _$FormInitializeFormStartedImpl(
      {this.initializeWithValidationErrors = false,
      this.isReinitializing = false,
      final Map<FormFieldId, dynamic>? formData,
      this.entityId,
      this.title})
      : _formData = formData;

  @override
  @JsonKey()
  final bool initializeWithValidationErrors;
  @override
  @JsonKey()
  final bool isReinitializing;
  final Map<FormFieldId, dynamic>? _formData;
  @override
  Map<FormFieldId, dynamic>? get formData {
    final value = _formData;
    if (value == null) return null;
    if (_formData is EqualUnmodifiableMapView) return _formData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final dynamic entityId;
  @override
  final String? title;

  @override
  String toString() {
    return 'FormEvent.initializeFormStarted(initializeWithValidationErrors: $initializeWithValidationErrors, isReinitializing: $isReinitializing, formData: $formData, entityId: $entityId, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormInitializeFormStartedImpl &&
            (identical(other.initializeWithValidationErrors,
                    initializeWithValidationErrors) ||
                other.initializeWithValidationErrors ==
                    initializeWithValidationErrors) &&
            (identical(other.isReinitializing, isReinitializing) ||
                other.isReinitializing == isReinitializing) &&
            const DeepCollectionEquality().equals(other._formData, _formData) &&
            const DeepCollectionEquality().equals(other.entityId, entityId) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      initializeWithValidationErrors,
      isReinitializing,
      const DeepCollectionEquality().hash(_formData),
      const DeepCollectionEquality().hash(entityId),
      title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormInitializeFormStartedImplCopyWith<_$FormInitializeFormStartedImpl>
      get copyWith => __$$FormInitializeFormStartedImplCopyWithImpl<
          _$FormInitializeFormStartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FormAction? eventAction) performActionStarted,
    required TResult Function() validateFieldStarted,
    required TResult Function(
            bool initializeWithValidationErrors,
            bool isReinitializing,
            Map<FormFieldId, dynamic>? formData,
            dynamic entityId,
            String? title)
        initializeFormStarted,
    required TResult Function(FormFieldId fieldId, String? inputValue)
        changeInputStarted,
    required TResult Function(FormFieldId fieldId, String? inputValue)
        exitInputTapped,
    required TResult Function(FormFieldId fieldId) toggleInputTapped,
    required TResult Function(FormFieldId fieldId, dynamic value)
        selectOptionTapped,
    required TResult Function(Map<FormFieldId, String> validationMap)
        updateValidationStarted,
  }) {
    return initializeFormStarted(initializeWithValidationErrors,
        isReinitializing, formData, entityId, title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FormAction? eventAction)? performActionStarted,
    TResult? Function()? validateFieldStarted,
    TResult? Function(
            bool initializeWithValidationErrors,
            bool isReinitializing,
            Map<FormFieldId, dynamic>? formData,
            dynamic entityId,
            String? title)?
        initializeFormStarted,
    TResult? Function(FormFieldId fieldId, String? inputValue)?
        changeInputStarted,
    TResult? Function(FormFieldId fieldId, String? inputValue)? exitInputTapped,
    TResult? Function(FormFieldId fieldId)? toggleInputTapped,
    TResult? Function(FormFieldId fieldId, dynamic value)? selectOptionTapped,
    TResult? Function(Map<FormFieldId, String> validationMap)?
        updateValidationStarted,
  }) {
    return initializeFormStarted?.call(initializeWithValidationErrors,
        isReinitializing, formData, entityId, title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FormAction? eventAction)? performActionStarted,
    TResult Function()? validateFieldStarted,
    TResult Function(
            bool initializeWithValidationErrors,
            bool isReinitializing,
            Map<FormFieldId, dynamic>? formData,
            dynamic entityId,
            String? title)?
        initializeFormStarted,
    TResult Function(FormFieldId fieldId, String? inputValue)?
        changeInputStarted,
    TResult Function(FormFieldId fieldId, String? inputValue)? exitInputTapped,
    TResult Function(FormFieldId fieldId)? toggleInputTapped,
    TResult Function(FormFieldId fieldId, dynamic value)? selectOptionTapped,
    TResult Function(Map<FormFieldId, String> validationMap)?
        updateValidationStarted,
    required TResult orElse(),
  }) {
    if (initializeFormStarted != null) {
      return initializeFormStarted(initializeWithValidationErrors,
          isReinitializing, formData, entityId, title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FormPerformActionStarted value)
        performActionStarted,
    required TResult Function(_FormValidateFieldStarted value)
        validateFieldStarted,
    required TResult Function(_FormInitializeFormStarted value)
        initializeFormStarted,
    required TResult Function(_FormChangeInputStarted value) changeInputStarted,
    required TResult Function(_FormExitInputTapped value) exitInputTapped,
    required TResult Function(_FormToggleInputTapped value) toggleInputTapped,
    required TResult Function(_FormSelectOptionTapped value) selectOptionTapped,
    required TResult Function(_FormUpdateValidationStarted value)
        updateValidationStarted,
  }) {
    return initializeFormStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FormPerformActionStarted value)? performActionStarted,
    TResult? Function(_FormValidateFieldStarted value)? validateFieldStarted,
    TResult? Function(_FormInitializeFormStarted value)? initializeFormStarted,
    TResult? Function(_FormChangeInputStarted value)? changeInputStarted,
    TResult? Function(_FormExitInputTapped value)? exitInputTapped,
    TResult? Function(_FormToggleInputTapped value)? toggleInputTapped,
    TResult? Function(_FormSelectOptionTapped value)? selectOptionTapped,
    TResult? Function(_FormUpdateValidationStarted value)?
        updateValidationStarted,
  }) {
    return initializeFormStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FormPerformActionStarted value)? performActionStarted,
    TResult Function(_FormValidateFieldStarted value)? validateFieldStarted,
    TResult Function(_FormInitializeFormStarted value)? initializeFormStarted,
    TResult Function(_FormChangeInputStarted value)? changeInputStarted,
    TResult Function(_FormExitInputTapped value)? exitInputTapped,
    TResult Function(_FormToggleInputTapped value)? toggleInputTapped,
    TResult Function(_FormSelectOptionTapped value)? selectOptionTapped,
    TResult Function(_FormUpdateValidationStarted value)?
        updateValidationStarted,
    required TResult orElse(),
  }) {
    if (initializeFormStarted != null) {
      return initializeFormStarted(this);
    }
    return orElse();
  }
}

abstract class _FormInitializeFormStarted implements FormEvent {
  const factory _FormInitializeFormStarted(
      {final bool initializeWithValidationErrors,
      final bool isReinitializing,
      final Map<FormFieldId, dynamic>? formData,
      final dynamic entityId,
      final String? title}) = _$FormInitializeFormStartedImpl;

  bool get initializeWithValidationErrors;
  bool get isReinitializing;
  Map<FormFieldId, dynamic>? get formData;
  dynamic get entityId;
  String? get title;
  @JsonKey(ignore: true)
  _$$FormInitializeFormStartedImplCopyWith<_$FormInitializeFormStartedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FormChangeInputStartedImplCopyWith<$Res> {
  factory _$$FormChangeInputStartedImplCopyWith(
          _$FormChangeInputStartedImpl value,
          $Res Function(_$FormChangeInputStartedImpl) then) =
      __$$FormChangeInputStartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FormFieldId fieldId, String? inputValue});
}

/// @nodoc
class __$$FormChangeInputStartedImplCopyWithImpl<$Res>
    extends _$FormEventCopyWithImpl<$Res, _$FormChangeInputStartedImpl>
    implements _$$FormChangeInputStartedImplCopyWith<$Res> {
  __$$FormChangeInputStartedImplCopyWithImpl(
      _$FormChangeInputStartedImpl _value,
      $Res Function(_$FormChangeInputStartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fieldId = null,
    Object? inputValue = freezed,
  }) {
    return _then(_$FormChangeInputStartedImpl(
      null == fieldId
          ? _value.fieldId
          : fieldId // ignore: cast_nullable_to_non_nullable
              as FormFieldId,
      freezed == inputValue
          ? _value.inputValue
          : inputValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FormChangeInputStartedImpl implements _FormChangeInputStarted {
  const _$FormChangeInputStartedImpl(this.fieldId, this.inputValue);

  @override
  final FormFieldId fieldId;
  @override
  final String? inputValue;

  @override
  String toString() {
    return 'FormEvent.changeInputStarted(fieldId: $fieldId, inputValue: $inputValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormChangeInputStartedImpl &&
            (identical(other.fieldId, fieldId) || other.fieldId == fieldId) &&
            (identical(other.inputValue, inputValue) ||
                other.inputValue == inputValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fieldId, inputValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormChangeInputStartedImplCopyWith<_$FormChangeInputStartedImpl>
      get copyWith => __$$FormChangeInputStartedImplCopyWithImpl<
          _$FormChangeInputStartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FormAction? eventAction) performActionStarted,
    required TResult Function() validateFieldStarted,
    required TResult Function(
            bool initializeWithValidationErrors,
            bool isReinitializing,
            Map<FormFieldId, dynamic>? formData,
            dynamic entityId,
            String? title)
        initializeFormStarted,
    required TResult Function(FormFieldId fieldId, String? inputValue)
        changeInputStarted,
    required TResult Function(FormFieldId fieldId, String? inputValue)
        exitInputTapped,
    required TResult Function(FormFieldId fieldId) toggleInputTapped,
    required TResult Function(FormFieldId fieldId, dynamic value)
        selectOptionTapped,
    required TResult Function(Map<FormFieldId, String> validationMap)
        updateValidationStarted,
  }) {
    return changeInputStarted(fieldId, inputValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FormAction? eventAction)? performActionStarted,
    TResult? Function()? validateFieldStarted,
    TResult? Function(
            bool initializeWithValidationErrors,
            bool isReinitializing,
            Map<FormFieldId, dynamic>? formData,
            dynamic entityId,
            String? title)?
        initializeFormStarted,
    TResult? Function(FormFieldId fieldId, String? inputValue)?
        changeInputStarted,
    TResult? Function(FormFieldId fieldId, String? inputValue)? exitInputTapped,
    TResult? Function(FormFieldId fieldId)? toggleInputTapped,
    TResult? Function(FormFieldId fieldId, dynamic value)? selectOptionTapped,
    TResult? Function(Map<FormFieldId, String> validationMap)?
        updateValidationStarted,
  }) {
    return changeInputStarted?.call(fieldId, inputValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FormAction? eventAction)? performActionStarted,
    TResult Function()? validateFieldStarted,
    TResult Function(
            bool initializeWithValidationErrors,
            bool isReinitializing,
            Map<FormFieldId, dynamic>? formData,
            dynamic entityId,
            String? title)?
        initializeFormStarted,
    TResult Function(FormFieldId fieldId, String? inputValue)?
        changeInputStarted,
    TResult Function(FormFieldId fieldId, String? inputValue)? exitInputTapped,
    TResult Function(FormFieldId fieldId)? toggleInputTapped,
    TResult Function(FormFieldId fieldId, dynamic value)? selectOptionTapped,
    TResult Function(Map<FormFieldId, String> validationMap)?
        updateValidationStarted,
    required TResult orElse(),
  }) {
    if (changeInputStarted != null) {
      return changeInputStarted(fieldId, inputValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FormPerformActionStarted value)
        performActionStarted,
    required TResult Function(_FormValidateFieldStarted value)
        validateFieldStarted,
    required TResult Function(_FormInitializeFormStarted value)
        initializeFormStarted,
    required TResult Function(_FormChangeInputStarted value) changeInputStarted,
    required TResult Function(_FormExitInputTapped value) exitInputTapped,
    required TResult Function(_FormToggleInputTapped value) toggleInputTapped,
    required TResult Function(_FormSelectOptionTapped value) selectOptionTapped,
    required TResult Function(_FormUpdateValidationStarted value)
        updateValidationStarted,
  }) {
    return changeInputStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FormPerformActionStarted value)? performActionStarted,
    TResult? Function(_FormValidateFieldStarted value)? validateFieldStarted,
    TResult? Function(_FormInitializeFormStarted value)? initializeFormStarted,
    TResult? Function(_FormChangeInputStarted value)? changeInputStarted,
    TResult? Function(_FormExitInputTapped value)? exitInputTapped,
    TResult? Function(_FormToggleInputTapped value)? toggleInputTapped,
    TResult? Function(_FormSelectOptionTapped value)? selectOptionTapped,
    TResult? Function(_FormUpdateValidationStarted value)?
        updateValidationStarted,
  }) {
    return changeInputStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FormPerformActionStarted value)? performActionStarted,
    TResult Function(_FormValidateFieldStarted value)? validateFieldStarted,
    TResult Function(_FormInitializeFormStarted value)? initializeFormStarted,
    TResult Function(_FormChangeInputStarted value)? changeInputStarted,
    TResult Function(_FormExitInputTapped value)? exitInputTapped,
    TResult Function(_FormToggleInputTapped value)? toggleInputTapped,
    TResult Function(_FormSelectOptionTapped value)? selectOptionTapped,
    TResult Function(_FormUpdateValidationStarted value)?
        updateValidationStarted,
    required TResult orElse(),
  }) {
    if (changeInputStarted != null) {
      return changeInputStarted(this);
    }
    return orElse();
  }
}

abstract class _FormChangeInputStarted implements FormEvent {
  const factory _FormChangeInputStarted(
          final FormFieldId fieldId, final String? inputValue) =
      _$FormChangeInputStartedImpl;

  FormFieldId get fieldId;
  String? get inputValue;
  @JsonKey(ignore: true)
  _$$FormChangeInputStartedImplCopyWith<_$FormChangeInputStartedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FormExitInputTappedImplCopyWith<$Res> {
  factory _$$FormExitInputTappedImplCopyWith(_$FormExitInputTappedImpl value,
          $Res Function(_$FormExitInputTappedImpl) then) =
      __$$FormExitInputTappedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FormFieldId fieldId, String? inputValue});
}

/// @nodoc
class __$$FormExitInputTappedImplCopyWithImpl<$Res>
    extends _$FormEventCopyWithImpl<$Res, _$FormExitInputTappedImpl>
    implements _$$FormExitInputTappedImplCopyWith<$Res> {
  __$$FormExitInputTappedImplCopyWithImpl(_$FormExitInputTappedImpl _value,
      $Res Function(_$FormExitInputTappedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fieldId = null,
    Object? inputValue = freezed,
  }) {
    return _then(_$FormExitInputTappedImpl(
      null == fieldId
          ? _value.fieldId
          : fieldId // ignore: cast_nullable_to_non_nullable
              as FormFieldId,
      freezed == inputValue
          ? _value.inputValue
          : inputValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FormExitInputTappedImpl implements _FormExitInputTapped {
  const _$FormExitInputTappedImpl(this.fieldId, this.inputValue);

  @override
  final FormFieldId fieldId;
  @override
  final String? inputValue;

  @override
  String toString() {
    return 'FormEvent.exitInputTapped(fieldId: $fieldId, inputValue: $inputValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormExitInputTappedImpl &&
            (identical(other.fieldId, fieldId) || other.fieldId == fieldId) &&
            (identical(other.inputValue, inputValue) ||
                other.inputValue == inputValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fieldId, inputValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormExitInputTappedImplCopyWith<_$FormExitInputTappedImpl> get copyWith =>
      __$$FormExitInputTappedImplCopyWithImpl<_$FormExitInputTappedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FormAction? eventAction) performActionStarted,
    required TResult Function() validateFieldStarted,
    required TResult Function(
            bool initializeWithValidationErrors,
            bool isReinitializing,
            Map<FormFieldId, dynamic>? formData,
            dynamic entityId,
            String? title)
        initializeFormStarted,
    required TResult Function(FormFieldId fieldId, String? inputValue)
        changeInputStarted,
    required TResult Function(FormFieldId fieldId, String? inputValue)
        exitInputTapped,
    required TResult Function(FormFieldId fieldId) toggleInputTapped,
    required TResult Function(FormFieldId fieldId, dynamic value)
        selectOptionTapped,
    required TResult Function(Map<FormFieldId, String> validationMap)
        updateValidationStarted,
  }) {
    return exitInputTapped(fieldId, inputValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FormAction? eventAction)? performActionStarted,
    TResult? Function()? validateFieldStarted,
    TResult? Function(
            bool initializeWithValidationErrors,
            bool isReinitializing,
            Map<FormFieldId, dynamic>? formData,
            dynamic entityId,
            String? title)?
        initializeFormStarted,
    TResult? Function(FormFieldId fieldId, String? inputValue)?
        changeInputStarted,
    TResult? Function(FormFieldId fieldId, String? inputValue)? exitInputTapped,
    TResult? Function(FormFieldId fieldId)? toggleInputTapped,
    TResult? Function(FormFieldId fieldId, dynamic value)? selectOptionTapped,
    TResult? Function(Map<FormFieldId, String> validationMap)?
        updateValidationStarted,
  }) {
    return exitInputTapped?.call(fieldId, inputValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FormAction? eventAction)? performActionStarted,
    TResult Function()? validateFieldStarted,
    TResult Function(
            bool initializeWithValidationErrors,
            bool isReinitializing,
            Map<FormFieldId, dynamic>? formData,
            dynamic entityId,
            String? title)?
        initializeFormStarted,
    TResult Function(FormFieldId fieldId, String? inputValue)?
        changeInputStarted,
    TResult Function(FormFieldId fieldId, String? inputValue)? exitInputTapped,
    TResult Function(FormFieldId fieldId)? toggleInputTapped,
    TResult Function(FormFieldId fieldId, dynamic value)? selectOptionTapped,
    TResult Function(Map<FormFieldId, String> validationMap)?
        updateValidationStarted,
    required TResult orElse(),
  }) {
    if (exitInputTapped != null) {
      return exitInputTapped(fieldId, inputValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FormPerformActionStarted value)
        performActionStarted,
    required TResult Function(_FormValidateFieldStarted value)
        validateFieldStarted,
    required TResult Function(_FormInitializeFormStarted value)
        initializeFormStarted,
    required TResult Function(_FormChangeInputStarted value) changeInputStarted,
    required TResult Function(_FormExitInputTapped value) exitInputTapped,
    required TResult Function(_FormToggleInputTapped value) toggleInputTapped,
    required TResult Function(_FormSelectOptionTapped value) selectOptionTapped,
    required TResult Function(_FormUpdateValidationStarted value)
        updateValidationStarted,
  }) {
    return exitInputTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FormPerformActionStarted value)? performActionStarted,
    TResult? Function(_FormValidateFieldStarted value)? validateFieldStarted,
    TResult? Function(_FormInitializeFormStarted value)? initializeFormStarted,
    TResult? Function(_FormChangeInputStarted value)? changeInputStarted,
    TResult? Function(_FormExitInputTapped value)? exitInputTapped,
    TResult? Function(_FormToggleInputTapped value)? toggleInputTapped,
    TResult? Function(_FormSelectOptionTapped value)? selectOptionTapped,
    TResult? Function(_FormUpdateValidationStarted value)?
        updateValidationStarted,
  }) {
    return exitInputTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FormPerformActionStarted value)? performActionStarted,
    TResult Function(_FormValidateFieldStarted value)? validateFieldStarted,
    TResult Function(_FormInitializeFormStarted value)? initializeFormStarted,
    TResult Function(_FormChangeInputStarted value)? changeInputStarted,
    TResult Function(_FormExitInputTapped value)? exitInputTapped,
    TResult Function(_FormToggleInputTapped value)? toggleInputTapped,
    TResult Function(_FormSelectOptionTapped value)? selectOptionTapped,
    TResult Function(_FormUpdateValidationStarted value)?
        updateValidationStarted,
    required TResult orElse(),
  }) {
    if (exitInputTapped != null) {
      return exitInputTapped(this);
    }
    return orElse();
  }
}

abstract class _FormExitInputTapped implements FormEvent {
  const factory _FormExitInputTapped(
          final FormFieldId fieldId, final String? inputValue) =
      _$FormExitInputTappedImpl;

  FormFieldId get fieldId;
  String? get inputValue;
  @JsonKey(ignore: true)
  _$$FormExitInputTappedImplCopyWith<_$FormExitInputTappedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FormToggleInputTappedImplCopyWith<$Res> {
  factory _$$FormToggleInputTappedImplCopyWith(
          _$FormToggleInputTappedImpl value,
          $Res Function(_$FormToggleInputTappedImpl) then) =
      __$$FormToggleInputTappedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FormFieldId fieldId});
}

/// @nodoc
class __$$FormToggleInputTappedImplCopyWithImpl<$Res>
    extends _$FormEventCopyWithImpl<$Res, _$FormToggleInputTappedImpl>
    implements _$$FormToggleInputTappedImplCopyWith<$Res> {
  __$$FormToggleInputTappedImplCopyWithImpl(_$FormToggleInputTappedImpl _value,
      $Res Function(_$FormToggleInputTappedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fieldId = null,
  }) {
    return _then(_$FormToggleInputTappedImpl(
      null == fieldId
          ? _value.fieldId
          : fieldId // ignore: cast_nullable_to_non_nullable
              as FormFieldId,
    ));
  }
}

/// @nodoc

class _$FormToggleInputTappedImpl implements _FormToggleInputTapped {
  const _$FormToggleInputTappedImpl(this.fieldId);

  @override
  final FormFieldId fieldId;

  @override
  String toString() {
    return 'FormEvent.toggleInputTapped(fieldId: $fieldId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormToggleInputTappedImpl &&
            (identical(other.fieldId, fieldId) || other.fieldId == fieldId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fieldId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormToggleInputTappedImplCopyWith<_$FormToggleInputTappedImpl>
      get copyWith => __$$FormToggleInputTappedImplCopyWithImpl<
          _$FormToggleInputTappedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FormAction? eventAction) performActionStarted,
    required TResult Function() validateFieldStarted,
    required TResult Function(
            bool initializeWithValidationErrors,
            bool isReinitializing,
            Map<FormFieldId, dynamic>? formData,
            dynamic entityId,
            String? title)
        initializeFormStarted,
    required TResult Function(FormFieldId fieldId, String? inputValue)
        changeInputStarted,
    required TResult Function(FormFieldId fieldId, String? inputValue)
        exitInputTapped,
    required TResult Function(FormFieldId fieldId) toggleInputTapped,
    required TResult Function(FormFieldId fieldId, dynamic value)
        selectOptionTapped,
    required TResult Function(Map<FormFieldId, String> validationMap)
        updateValidationStarted,
  }) {
    return toggleInputTapped(fieldId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FormAction? eventAction)? performActionStarted,
    TResult? Function()? validateFieldStarted,
    TResult? Function(
            bool initializeWithValidationErrors,
            bool isReinitializing,
            Map<FormFieldId, dynamic>? formData,
            dynamic entityId,
            String? title)?
        initializeFormStarted,
    TResult? Function(FormFieldId fieldId, String? inputValue)?
        changeInputStarted,
    TResult? Function(FormFieldId fieldId, String? inputValue)? exitInputTapped,
    TResult? Function(FormFieldId fieldId)? toggleInputTapped,
    TResult? Function(FormFieldId fieldId, dynamic value)? selectOptionTapped,
    TResult? Function(Map<FormFieldId, String> validationMap)?
        updateValidationStarted,
  }) {
    return toggleInputTapped?.call(fieldId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FormAction? eventAction)? performActionStarted,
    TResult Function()? validateFieldStarted,
    TResult Function(
            bool initializeWithValidationErrors,
            bool isReinitializing,
            Map<FormFieldId, dynamic>? formData,
            dynamic entityId,
            String? title)?
        initializeFormStarted,
    TResult Function(FormFieldId fieldId, String? inputValue)?
        changeInputStarted,
    TResult Function(FormFieldId fieldId, String? inputValue)? exitInputTapped,
    TResult Function(FormFieldId fieldId)? toggleInputTapped,
    TResult Function(FormFieldId fieldId, dynamic value)? selectOptionTapped,
    TResult Function(Map<FormFieldId, String> validationMap)?
        updateValidationStarted,
    required TResult orElse(),
  }) {
    if (toggleInputTapped != null) {
      return toggleInputTapped(fieldId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FormPerformActionStarted value)
        performActionStarted,
    required TResult Function(_FormValidateFieldStarted value)
        validateFieldStarted,
    required TResult Function(_FormInitializeFormStarted value)
        initializeFormStarted,
    required TResult Function(_FormChangeInputStarted value) changeInputStarted,
    required TResult Function(_FormExitInputTapped value) exitInputTapped,
    required TResult Function(_FormToggleInputTapped value) toggleInputTapped,
    required TResult Function(_FormSelectOptionTapped value) selectOptionTapped,
    required TResult Function(_FormUpdateValidationStarted value)
        updateValidationStarted,
  }) {
    return toggleInputTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FormPerformActionStarted value)? performActionStarted,
    TResult? Function(_FormValidateFieldStarted value)? validateFieldStarted,
    TResult? Function(_FormInitializeFormStarted value)? initializeFormStarted,
    TResult? Function(_FormChangeInputStarted value)? changeInputStarted,
    TResult? Function(_FormExitInputTapped value)? exitInputTapped,
    TResult? Function(_FormToggleInputTapped value)? toggleInputTapped,
    TResult? Function(_FormSelectOptionTapped value)? selectOptionTapped,
    TResult? Function(_FormUpdateValidationStarted value)?
        updateValidationStarted,
  }) {
    return toggleInputTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FormPerformActionStarted value)? performActionStarted,
    TResult Function(_FormValidateFieldStarted value)? validateFieldStarted,
    TResult Function(_FormInitializeFormStarted value)? initializeFormStarted,
    TResult Function(_FormChangeInputStarted value)? changeInputStarted,
    TResult Function(_FormExitInputTapped value)? exitInputTapped,
    TResult Function(_FormToggleInputTapped value)? toggleInputTapped,
    TResult Function(_FormSelectOptionTapped value)? selectOptionTapped,
    TResult Function(_FormUpdateValidationStarted value)?
        updateValidationStarted,
    required TResult orElse(),
  }) {
    if (toggleInputTapped != null) {
      return toggleInputTapped(this);
    }
    return orElse();
  }
}

abstract class _FormToggleInputTapped implements FormEvent {
  const factory _FormToggleInputTapped(final FormFieldId fieldId) =
      _$FormToggleInputTappedImpl;

  FormFieldId get fieldId;
  @JsonKey(ignore: true)
  _$$FormToggleInputTappedImplCopyWith<_$FormToggleInputTappedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FormSelectOptionTappedImplCopyWith<$Res> {
  factory _$$FormSelectOptionTappedImplCopyWith(
          _$FormSelectOptionTappedImpl value,
          $Res Function(_$FormSelectOptionTappedImpl) then) =
      __$$FormSelectOptionTappedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FormFieldId fieldId, dynamic value});
}

/// @nodoc
class __$$FormSelectOptionTappedImplCopyWithImpl<$Res>
    extends _$FormEventCopyWithImpl<$Res, _$FormSelectOptionTappedImpl>
    implements _$$FormSelectOptionTappedImplCopyWith<$Res> {
  __$$FormSelectOptionTappedImplCopyWithImpl(
      _$FormSelectOptionTappedImpl _value,
      $Res Function(_$FormSelectOptionTappedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fieldId = null,
    Object? value = freezed,
  }) {
    return _then(_$FormSelectOptionTappedImpl(
      null == fieldId
          ? _value.fieldId
          : fieldId // ignore: cast_nullable_to_non_nullable
              as FormFieldId,
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$FormSelectOptionTappedImpl implements _FormSelectOptionTapped {
  const _$FormSelectOptionTappedImpl(this.fieldId, this.value);

  @override
  final FormFieldId fieldId;
  @override
  final dynamic value;

  @override
  String toString() {
    return 'FormEvent.selectOptionTapped(fieldId: $fieldId, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormSelectOptionTappedImpl &&
            (identical(other.fieldId, fieldId) || other.fieldId == fieldId) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, fieldId, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormSelectOptionTappedImplCopyWith<_$FormSelectOptionTappedImpl>
      get copyWith => __$$FormSelectOptionTappedImplCopyWithImpl<
          _$FormSelectOptionTappedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FormAction? eventAction) performActionStarted,
    required TResult Function() validateFieldStarted,
    required TResult Function(
            bool initializeWithValidationErrors,
            bool isReinitializing,
            Map<FormFieldId, dynamic>? formData,
            dynamic entityId,
            String? title)
        initializeFormStarted,
    required TResult Function(FormFieldId fieldId, String? inputValue)
        changeInputStarted,
    required TResult Function(FormFieldId fieldId, String? inputValue)
        exitInputTapped,
    required TResult Function(FormFieldId fieldId) toggleInputTapped,
    required TResult Function(FormFieldId fieldId, dynamic value)
        selectOptionTapped,
    required TResult Function(Map<FormFieldId, String> validationMap)
        updateValidationStarted,
  }) {
    return selectOptionTapped(fieldId, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FormAction? eventAction)? performActionStarted,
    TResult? Function()? validateFieldStarted,
    TResult? Function(
            bool initializeWithValidationErrors,
            bool isReinitializing,
            Map<FormFieldId, dynamic>? formData,
            dynamic entityId,
            String? title)?
        initializeFormStarted,
    TResult? Function(FormFieldId fieldId, String? inputValue)?
        changeInputStarted,
    TResult? Function(FormFieldId fieldId, String? inputValue)? exitInputTapped,
    TResult? Function(FormFieldId fieldId)? toggleInputTapped,
    TResult? Function(FormFieldId fieldId, dynamic value)? selectOptionTapped,
    TResult? Function(Map<FormFieldId, String> validationMap)?
        updateValidationStarted,
  }) {
    return selectOptionTapped?.call(fieldId, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FormAction? eventAction)? performActionStarted,
    TResult Function()? validateFieldStarted,
    TResult Function(
            bool initializeWithValidationErrors,
            bool isReinitializing,
            Map<FormFieldId, dynamic>? formData,
            dynamic entityId,
            String? title)?
        initializeFormStarted,
    TResult Function(FormFieldId fieldId, String? inputValue)?
        changeInputStarted,
    TResult Function(FormFieldId fieldId, String? inputValue)? exitInputTapped,
    TResult Function(FormFieldId fieldId)? toggleInputTapped,
    TResult Function(FormFieldId fieldId, dynamic value)? selectOptionTapped,
    TResult Function(Map<FormFieldId, String> validationMap)?
        updateValidationStarted,
    required TResult orElse(),
  }) {
    if (selectOptionTapped != null) {
      return selectOptionTapped(fieldId, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FormPerformActionStarted value)
        performActionStarted,
    required TResult Function(_FormValidateFieldStarted value)
        validateFieldStarted,
    required TResult Function(_FormInitializeFormStarted value)
        initializeFormStarted,
    required TResult Function(_FormChangeInputStarted value) changeInputStarted,
    required TResult Function(_FormExitInputTapped value) exitInputTapped,
    required TResult Function(_FormToggleInputTapped value) toggleInputTapped,
    required TResult Function(_FormSelectOptionTapped value) selectOptionTapped,
    required TResult Function(_FormUpdateValidationStarted value)
        updateValidationStarted,
  }) {
    return selectOptionTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FormPerformActionStarted value)? performActionStarted,
    TResult? Function(_FormValidateFieldStarted value)? validateFieldStarted,
    TResult? Function(_FormInitializeFormStarted value)? initializeFormStarted,
    TResult? Function(_FormChangeInputStarted value)? changeInputStarted,
    TResult? Function(_FormExitInputTapped value)? exitInputTapped,
    TResult? Function(_FormToggleInputTapped value)? toggleInputTapped,
    TResult? Function(_FormSelectOptionTapped value)? selectOptionTapped,
    TResult? Function(_FormUpdateValidationStarted value)?
        updateValidationStarted,
  }) {
    return selectOptionTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FormPerformActionStarted value)? performActionStarted,
    TResult Function(_FormValidateFieldStarted value)? validateFieldStarted,
    TResult Function(_FormInitializeFormStarted value)? initializeFormStarted,
    TResult Function(_FormChangeInputStarted value)? changeInputStarted,
    TResult Function(_FormExitInputTapped value)? exitInputTapped,
    TResult Function(_FormToggleInputTapped value)? toggleInputTapped,
    TResult Function(_FormSelectOptionTapped value)? selectOptionTapped,
    TResult Function(_FormUpdateValidationStarted value)?
        updateValidationStarted,
    required TResult orElse(),
  }) {
    if (selectOptionTapped != null) {
      return selectOptionTapped(this);
    }
    return orElse();
  }
}

abstract class _FormSelectOptionTapped implements FormEvent {
  const factory _FormSelectOptionTapped(
          final FormFieldId fieldId, final dynamic value) =
      _$FormSelectOptionTappedImpl;

  FormFieldId get fieldId;
  dynamic get value;
  @JsonKey(ignore: true)
  _$$FormSelectOptionTappedImplCopyWith<_$FormSelectOptionTappedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FormUpdateValidationStartedImplCopyWith<$Res> {
  factory _$$FormUpdateValidationStartedImplCopyWith(
          _$FormUpdateValidationStartedImpl value,
          $Res Function(_$FormUpdateValidationStartedImpl) then) =
      __$$FormUpdateValidationStartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<FormFieldId, String> validationMap});
}

/// @nodoc
class __$$FormUpdateValidationStartedImplCopyWithImpl<$Res>
    extends _$FormEventCopyWithImpl<$Res, _$FormUpdateValidationStartedImpl>
    implements _$$FormUpdateValidationStartedImplCopyWith<$Res> {
  __$$FormUpdateValidationStartedImplCopyWithImpl(
      _$FormUpdateValidationStartedImpl _value,
      $Res Function(_$FormUpdateValidationStartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? validationMap = null,
  }) {
    return _then(_$FormUpdateValidationStartedImpl(
      null == validationMap
          ? _value._validationMap
          : validationMap // ignore: cast_nullable_to_non_nullable
              as Map<FormFieldId, String>,
    ));
  }
}

/// @nodoc

class _$FormUpdateValidationStartedImpl
    implements _FormUpdateValidationStarted {
  const _$FormUpdateValidationStartedImpl(
      final Map<FormFieldId, String> validationMap)
      : _validationMap = validationMap;

  final Map<FormFieldId, String> _validationMap;
  @override
  Map<FormFieldId, String> get validationMap {
    if (_validationMap is EqualUnmodifiableMapView) return _validationMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_validationMap);
  }

  @override
  String toString() {
    return 'FormEvent.updateValidationStarted(validationMap: $validationMap)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormUpdateValidationStartedImpl &&
            const DeepCollectionEquality()
                .equals(other._validationMap, _validationMap));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_validationMap));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormUpdateValidationStartedImplCopyWith<_$FormUpdateValidationStartedImpl>
      get copyWith => __$$FormUpdateValidationStartedImplCopyWithImpl<
          _$FormUpdateValidationStartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FormAction? eventAction) performActionStarted,
    required TResult Function() validateFieldStarted,
    required TResult Function(
            bool initializeWithValidationErrors,
            bool isReinitializing,
            Map<FormFieldId, dynamic>? formData,
            dynamic entityId,
            String? title)
        initializeFormStarted,
    required TResult Function(FormFieldId fieldId, String? inputValue)
        changeInputStarted,
    required TResult Function(FormFieldId fieldId, String? inputValue)
        exitInputTapped,
    required TResult Function(FormFieldId fieldId) toggleInputTapped,
    required TResult Function(FormFieldId fieldId, dynamic value)
        selectOptionTapped,
    required TResult Function(Map<FormFieldId, String> validationMap)
        updateValidationStarted,
  }) {
    return updateValidationStarted(validationMap);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FormAction? eventAction)? performActionStarted,
    TResult? Function()? validateFieldStarted,
    TResult? Function(
            bool initializeWithValidationErrors,
            bool isReinitializing,
            Map<FormFieldId, dynamic>? formData,
            dynamic entityId,
            String? title)?
        initializeFormStarted,
    TResult? Function(FormFieldId fieldId, String? inputValue)?
        changeInputStarted,
    TResult? Function(FormFieldId fieldId, String? inputValue)? exitInputTapped,
    TResult? Function(FormFieldId fieldId)? toggleInputTapped,
    TResult? Function(FormFieldId fieldId, dynamic value)? selectOptionTapped,
    TResult? Function(Map<FormFieldId, String> validationMap)?
        updateValidationStarted,
  }) {
    return updateValidationStarted?.call(validationMap);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FormAction? eventAction)? performActionStarted,
    TResult Function()? validateFieldStarted,
    TResult Function(
            bool initializeWithValidationErrors,
            bool isReinitializing,
            Map<FormFieldId, dynamic>? formData,
            dynamic entityId,
            String? title)?
        initializeFormStarted,
    TResult Function(FormFieldId fieldId, String? inputValue)?
        changeInputStarted,
    TResult Function(FormFieldId fieldId, String? inputValue)? exitInputTapped,
    TResult Function(FormFieldId fieldId)? toggleInputTapped,
    TResult Function(FormFieldId fieldId, dynamic value)? selectOptionTapped,
    TResult Function(Map<FormFieldId, String> validationMap)?
        updateValidationStarted,
    required TResult orElse(),
  }) {
    if (updateValidationStarted != null) {
      return updateValidationStarted(validationMap);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FormPerformActionStarted value)
        performActionStarted,
    required TResult Function(_FormValidateFieldStarted value)
        validateFieldStarted,
    required TResult Function(_FormInitializeFormStarted value)
        initializeFormStarted,
    required TResult Function(_FormChangeInputStarted value) changeInputStarted,
    required TResult Function(_FormExitInputTapped value) exitInputTapped,
    required TResult Function(_FormToggleInputTapped value) toggleInputTapped,
    required TResult Function(_FormSelectOptionTapped value) selectOptionTapped,
    required TResult Function(_FormUpdateValidationStarted value)
        updateValidationStarted,
  }) {
    return updateValidationStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FormPerformActionStarted value)? performActionStarted,
    TResult? Function(_FormValidateFieldStarted value)? validateFieldStarted,
    TResult? Function(_FormInitializeFormStarted value)? initializeFormStarted,
    TResult? Function(_FormChangeInputStarted value)? changeInputStarted,
    TResult? Function(_FormExitInputTapped value)? exitInputTapped,
    TResult? Function(_FormToggleInputTapped value)? toggleInputTapped,
    TResult? Function(_FormSelectOptionTapped value)? selectOptionTapped,
    TResult? Function(_FormUpdateValidationStarted value)?
        updateValidationStarted,
  }) {
    return updateValidationStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FormPerformActionStarted value)? performActionStarted,
    TResult Function(_FormValidateFieldStarted value)? validateFieldStarted,
    TResult Function(_FormInitializeFormStarted value)? initializeFormStarted,
    TResult Function(_FormChangeInputStarted value)? changeInputStarted,
    TResult Function(_FormExitInputTapped value)? exitInputTapped,
    TResult Function(_FormToggleInputTapped value)? toggleInputTapped,
    TResult Function(_FormSelectOptionTapped value)? selectOptionTapped,
    TResult Function(_FormUpdateValidationStarted value)?
        updateValidationStarted,
    required TResult orElse(),
  }) {
    if (updateValidationStarted != null) {
      return updateValidationStarted(this);
    }
    return orElse();
  }
}

abstract class _FormUpdateValidationStarted implements FormEvent {
  const factory _FormUpdateValidationStarted(
          final Map<FormFieldId, String> validationMap) =
      _$FormUpdateValidationStartedImpl;

  Map<FormFieldId, String> get validationMap;
  @JsonKey(ignore: true)
  _$$FormUpdateValidationStartedImplCopyWith<_$FormUpdateValidationStartedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FormBlocState {
  FormVM get data => throw _privateConstructorUsedError;
  Map<dynamic, FormFieldConfig> get inputConfigMap =>
      throw _privateConstructorUsedError;

  /// The external route name which lets the Bloc know if the user
  /// should be routed to a specific page. It's up to the UI (i.e. component)
  /// to decide how the routing happens. e.g. Open a new page or open a modal
  /// bottom sheet.
  String? get routeTo => throw _privateConstructorUsedError;

  /// Indicates if the form will automatically submit the changes as soon as
  /// the bloc determines a valid change. This is helpful for cases such as
  /// when the user edit an inline form field in which the input should be
  /// processed after some throttling.
  bool get autoSubmit => throw _privateConstructorUsedError;

  /// By default, the form is clean and there's nothing to save/submit. As
  /// soon as the form has dirty data,
  bool get isFormDirty => throw _privateConstructorUsedError;

  /// Indicates if the form is valid determined by the FormValidationProvider.
  bool get isFormValid => throw _privateConstructorUsedError;
  bool get canSubmit => throw _privateConstructorUsedError;

  /// Indicates if the form will show a "Submit" button. When false, the
  /// canSubmit property's value has no use.
  /// This is needed in cases where the form is used as a read-only form
  /// which does not allow editing of the form's fields.
  bool get isSubmittable => throw _privateConstructorUsedError;
  FormAction? get currentActionEvent => throw _privateConstructorUsedError;
  bool get canRebuild => throw _privateConstructorUsedError;
  bool get isContentLoaded => throw _privateConstructorUsedError;

  /// When the UI (i.e. FormComponent) has to request the rebuilding of the
  /// forms due to scrolling events or when the user tries to refresh the
  /// page, this is used to tell the bloc if it should grant the request
  bool get isUiInitiatedBuildingComplete => throw _privateConstructorUsedError;
  int? get lastStateUpdateTimeStamp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FormBlocStateCopyWith<FormBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormBlocStateCopyWith<$Res> {
  factory $FormBlocStateCopyWith(
          FormBlocState value, $Res Function(FormBlocState) then) =
      _$FormBlocStateCopyWithImpl<$Res, FormBlocState>;
  @useResult
  $Res call(
      {FormVM data,
      Map<dynamic, FormFieldConfig> inputConfigMap,
      String? routeTo,
      bool autoSubmit,
      bool isFormDirty,
      bool isFormValid,
      bool canSubmit,
      bool isSubmittable,
      FormAction? currentActionEvent,
      bool canRebuild,
      bool isContentLoaded,
      bool isUiInitiatedBuildingComplete,
      int? lastStateUpdateTimeStamp});

  $FormVMCopyWith<$Res> get data;
}

/// @nodoc
class _$FormBlocStateCopyWithImpl<$Res, $Val extends FormBlocState>
    implements $FormBlocStateCopyWith<$Res> {
  _$FormBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? inputConfigMap = null,
    Object? routeTo = freezed,
    Object? autoSubmit = null,
    Object? isFormDirty = null,
    Object? isFormValid = null,
    Object? canSubmit = null,
    Object? isSubmittable = null,
    Object? currentActionEvent = freezed,
    Object? canRebuild = null,
    Object? isContentLoaded = null,
    Object? isUiInitiatedBuildingComplete = null,
    Object? lastStateUpdateTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FormVM,
      inputConfigMap: null == inputConfigMap
          ? _value.inputConfigMap
          : inputConfigMap // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, FormFieldConfig>,
      routeTo: freezed == routeTo
          ? _value.routeTo
          : routeTo // ignore: cast_nullable_to_non_nullable
              as String?,
      autoSubmit: null == autoSubmit
          ? _value.autoSubmit
          : autoSubmit // ignore: cast_nullable_to_non_nullable
              as bool,
      isFormDirty: null == isFormDirty
          ? _value.isFormDirty
          : isFormDirty // ignore: cast_nullable_to_non_nullable
              as bool,
      isFormValid: null == isFormValid
          ? _value.isFormValid
          : isFormValid // ignore: cast_nullable_to_non_nullable
              as bool,
      canSubmit: null == canSubmit
          ? _value.canSubmit
          : canSubmit // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmittable: null == isSubmittable
          ? _value.isSubmittable
          : isSubmittable // ignore: cast_nullable_to_non_nullable
              as bool,
      currentActionEvent: freezed == currentActionEvent
          ? _value.currentActionEvent
          : currentActionEvent // ignore: cast_nullable_to_non_nullable
              as FormAction?,
      canRebuild: null == canRebuild
          ? _value.canRebuild
          : canRebuild // ignore: cast_nullable_to_non_nullable
              as bool,
      isContentLoaded: null == isContentLoaded
          ? _value.isContentLoaded
          : isContentLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      isUiInitiatedBuildingComplete: null == isUiInitiatedBuildingComplete
          ? _value.isUiInitiatedBuildingComplete
          : isUiInitiatedBuildingComplete // ignore: cast_nullable_to_non_nullable
              as bool,
      lastStateUpdateTimeStamp: freezed == lastStateUpdateTimeStamp
          ? _value.lastStateUpdateTimeStamp
          : lastStateUpdateTimeStamp // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FormVMCopyWith<$Res> get data {
    return $FormVMCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FormBlocStateImplCopyWith<$Res>
    implements $FormBlocStateCopyWith<$Res> {
  factory _$$FormBlocStateImplCopyWith(
          _$FormBlocStateImpl value, $Res Function(_$FormBlocStateImpl) then) =
      __$$FormBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FormVM data,
      Map<dynamic, FormFieldConfig> inputConfigMap,
      String? routeTo,
      bool autoSubmit,
      bool isFormDirty,
      bool isFormValid,
      bool canSubmit,
      bool isSubmittable,
      FormAction? currentActionEvent,
      bool canRebuild,
      bool isContentLoaded,
      bool isUiInitiatedBuildingComplete,
      int? lastStateUpdateTimeStamp});

  @override
  $FormVMCopyWith<$Res> get data;
}

/// @nodoc
class __$$FormBlocStateImplCopyWithImpl<$Res>
    extends _$FormBlocStateCopyWithImpl<$Res, _$FormBlocStateImpl>
    implements _$$FormBlocStateImplCopyWith<$Res> {
  __$$FormBlocStateImplCopyWithImpl(
      _$FormBlocStateImpl _value, $Res Function(_$FormBlocStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? inputConfigMap = null,
    Object? routeTo = freezed,
    Object? autoSubmit = null,
    Object? isFormDirty = null,
    Object? isFormValid = null,
    Object? canSubmit = null,
    Object? isSubmittable = null,
    Object? currentActionEvent = freezed,
    Object? canRebuild = null,
    Object? isContentLoaded = null,
    Object? isUiInitiatedBuildingComplete = null,
    Object? lastStateUpdateTimeStamp = freezed,
  }) {
    return _then(_$FormBlocStateImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FormVM,
      inputConfigMap: null == inputConfigMap
          ? _value._inputConfigMap
          : inputConfigMap // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, FormFieldConfig>,
      routeTo: freezed == routeTo
          ? _value.routeTo
          : routeTo // ignore: cast_nullable_to_non_nullable
              as String?,
      autoSubmit: null == autoSubmit
          ? _value.autoSubmit
          : autoSubmit // ignore: cast_nullable_to_non_nullable
              as bool,
      isFormDirty: null == isFormDirty
          ? _value.isFormDirty
          : isFormDirty // ignore: cast_nullable_to_non_nullable
              as bool,
      isFormValid: null == isFormValid
          ? _value.isFormValid
          : isFormValid // ignore: cast_nullable_to_non_nullable
              as bool,
      canSubmit: null == canSubmit
          ? _value.canSubmit
          : canSubmit // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmittable: null == isSubmittable
          ? _value.isSubmittable
          : isSubmittable // ignore: cast_nullable_to_non_nullable
              as bool,
      currentActionEvent: freezed == currentActionEvent
          ? _value.currentActionEvent
          : currentActionEvent // ignore: cast_nullable_to_non_nullable
              as FormAction?,
      canRebuild: null == canRebuild
          ? _value.canRebuild
          : canRebuild // ignore: cast_nullable_to_non_nullable
              as bool,
      isContentLoaded: null == isContentLoaded
          ? _value.isContentLoaded
          : isContentLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      isUiInitiatedBuildingComplete: null == isUiInitiatedBuildingComplete
          ? _value.isUiInitiatedBuildingComplete
          : isUiInitiatedBuildingComplete // ignore: cast_nullable_to_non_nullable
              as bool,
      lastStateUpdateTimeStamp: freezed == lastStateUpdateTimeStamp
          ? _value.lastStateUpdateTimeStamp
          : lastStateUpdateTimeStamp // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$FormBlocStateImpl implements _FormBlocState {
  const _$FormBlocStateImpl(
      {required this.data,
      required final Map<dynamic, FormFieldConfig> inputConfigMap,
      this.routeTo,
      this.autoSubmit = false,
      this.isFormDirty = false,
      this.isFormValid = false,
      this.canSubmit = false,
      this.isSubmittable = true,
      this.currentActionEvent,
      this.canRebuild = false,
      this.isContentLoaded = false,
      this.isUiInitiatedBuildingComplete = false,
      this.lastStateUpdateTimeStamp})
      : _inputConfigMap = inputConfigMap;

  @override
  final FormVM data;
  final Map<dynamic, FormFieldConfig> _inputConfigMap;
  @override
  Map<dynamic, FormFieldConfig> get inputConfigMap {
    if (_inputConfigMap is EqualUnmodifiableMapView) return _inputConfigMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_inputConfigMap);
  }

  /// The external route name which lets the Bloc know if the user
  /// should be routed to a specific page. It's up to the UI (i.e. component)
  /// to decide how the routing happens. e.g. Open a new page or open a modal
  /// bottom sheet.
  @override
  final String? routeTo;

  /// Indicates if the form will automatically submit the changes as soon as
  /// the bloc determines a valid change. This is helpful for cases such as
  /// when the user edit an inline form field in which the input should be
  /// processed after some throttling.
  @override
  @JsonKey()
  final bool autoSubmit;

  /// By default, the form is clean and there's nothing to save/submit. As
  /// soon as the form has dirty data,
  @override
  @JsonKey()
  final bool isFormDirty;

  /// Indicates if the form is valid determined by the FormValidationProvider.
  @override
  @JsonKey()
  final bool isFormValid;
  @override
  @JsonKey()
  final bool canSubmit;

  /// Indicates if the form will show a "Submit" button. When false, the
  /// canSubmit property's value has no use.
  /// This is needed in cases where the form is used as a read-only form
  /// which does not allow editing of the form's fields.
  @override
  @JsonKey()
  final bool isSubmittable;
  @override
  final FormAction? currentActionEvent;
  @override
  @JsonKey()
  final bool canRebuild;
  @override
  @JsonKey()
  final bool isContentLoaded;

  /// When the UI (i.e. FormComponent) has to request the rebuilding of the
  /// forms due to scrolling events or when the user tries to refresh the
  /// page, this is used to tell the bloc if it should grant the request
  @override
  @JsonKey()
  final bool isUiInitiatedBuildingComplete;
  @override
  final int? lastStateUpdateTimeStamp;

  @override
  String toString() {
    return 'FormBlocState(data: $data, inputConfigMap: $inputConfigMap, routeTo: $routeTo, autoSubmit: $autoSubmit, isFormDirty: $isFormDirty, isFormValid: $isFormValid, canSubmit: $canSubmit, isSubmittable: $isSubmittable, currentActionEvent: $currentActionEvent, canRebuild: $canRebuild, isContentLoaded: $isContentLoaded, isUiInitiatedBuildingComplete: $isUiInitiatedBuildingComplete, lastStateUpdateTimeStamp: $lastStateUpdateTimeStamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormBlocStateImpl &&
            (identical(other.data, data) || other.data == data) &&
            const DeepCollectionEquality()
                .equals(other._inputConfigMap, _inputConfigMap) &&
            (identical(other.routeTo, routeTo) || other.routeTo == routeTo) &&
            (identical(other.autoSubmit, autoSubmit) ||
                other.autoSubmit == autoSubmit) &&
            (identical(other.isFormDirty, isFormDirty) ||
                other.isFormDirty == isFormDirty) &&
            (identical(other.isFormValid, isFormValid) ||
                other.isFormValid == isFormValid) &&
            (identical(other.canSubmit, canSubmit) ||
                other.canSubmit == canSubmit) &&
            (identical(other.isSubmittable, isSubmittable) ||
                other.isSubmittable == isSubmittable) &&
            (identical(other.currentActionEvent, currentActionEvent) ||
                other.currentActionEvent == currentActionEvent) &&
            (identical(other.canRebuild, canRebuild) ||
                other.canRebuild == canRebuild) &&
            (identical(other.isContentLoaded, isContentLoaded) ||
                other.isContentLoaded == isContentLoaded) &&
            (identical(other.isUiInitiatedBuildingComplete,
                    isUiInitiatedBuildingComplete) ||
                other.isUiInitiatedBuildingComplete ==
                    isUiInitiatedBuildingComplete) &&
            (identical(
                    other.lastStateUpdateTimeStamp, lastStateUpdateTimeStamp) ||
                other.lastStateUpdateTimeStamp == lastStateUpdateTimeStamp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      data,
      const DeepCollectionEquality().hash(_inputConfigMap),
      routeTo,
      autoSubmit,
      isFormDirty,
      isFormValid,
      canSubmit,
      isSubmittable,
      currentActionEvent,
      canRebuild,
      isContentLoaded,
      isUiInitiatedBuildingComplete,
      lastStateUpdateTimeStamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormBlocStateImplCopyWith<_$FormBlocStateImpl> get copyWith =>
      __$$FormBlocStateImplCopyWithImpl<_$FormBlocStateImpl>(this, _$identity);
}

abstract class _FormBlocState implements FormBlocState {
  const factory _FormBlocState(
      {required final FormVM data,
      required final Map<dynamic, FormFieldConfig> inputConfigMap,
      final String? routeTo,
      final bool autoSubmit,
      final bool isFormDirty,
      final bool isFormValid,
      final bool canSubmit,
      final bool isSubmittable,
      final FormAction? currentActionEvent,
      final bool canRebuild,
      final bool isContentLoaded,
      final bool isUiInitiatedBuildingComplete,
      final int? lastStateUpdateTimeStamp}) = _$FormBlocStateImpl;

  @override
  FormVM get data;
  @override
  Map<dynamic, FormFieldConfig> get inputConfigMap;
  @override

  /// The external route name which lets the Bloc know if the user
  /// should be routed to a specific page. It's up to the UI (i.e. component)
  /// to decide how the routing happens. e.g. Open a new page or open a modal
  /// bottom sheet.
  String? get routeTo;
  @override

  /// Indicates if the form will automatically submit the changes as soon as
  /// the bloc determines a valid change. This is helpful for cases such as
  /// when the user edit an inline form field in which the input should be
  /// processed after some throttling.
  bool get autoSubmit;
  @override

  /// By default, the form is clean and there's nothing to save/submit. As
  /// soon as the form has dirty data,
  bool get isFormDirty;
  @override

  /// Indicates if the form is valid determined by the FormValidationProvider.
  bool get isFormValid;
  @override
  bool get canSubmit;
  @override

  /// Indicates if the form will show a "Submit" button. When false, the
  /// canSubmit property's value has no use.
  /// This is needed in cases where the form is used as a read-only form
  /// which does not allow editing of the form's fields.
  bool get isSubmittable;
  @override
  FormAction? get currentActionEvent;
  @override
  bool get canRebuild;
  @override
  bool get isContentLoaded;
  @override

  /// When the UI (i.e. FormComponent) has to request the rebuilding of the
  /// forms due to scrolling events or when the user tries to refresh the
  /// page, this is used to tell the bloc if it should grant the request
  bool get isUiInitiatedBuildingComplete;
  @override
  int? get lastStateUpdateTimeStamp;
  @override
  @JsonKey(ignore: true)
  _$$FormBlocStateImplCopyWith<_$FormBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
