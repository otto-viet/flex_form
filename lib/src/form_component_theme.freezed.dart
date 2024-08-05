// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_component_theme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FormComponentThemeData {
  TextInputThemeData get textInputTheme => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FormComponentThemeDataCopyWith<FormComponentThemeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormComponentThemeDataCopyWith<$Res> {
  factory $FormComponentThemeDataCopyWith(FormComponentThemeData value,
          $Res Function(FormComponentThemeData) then) =
      _$FormComponentThemeDataCopyWithImpl<$Res, FormComponentThemeData>;
  @useResult
  $Res call({TextInputThemeData textInputTheme});

  $TextInputThemeDataCopyWith<$Res> get textInputTheme;
}

/// @nodoc
class _$FormComponentThemeDataCopyWithImpl<$Res,
        $Val extends FormComponentThemeData>
    implements $FormComponentThemeDataCopyWith<$Res> {
  _$FormComponentThemeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textInputTheme = null,
  }) {
    return _then(_value.copyWith(
      textInputTheme: null == textInputTheme
          ? _value.textInputTheme
          : textInputTheme // ignore: cast_nullable_to_non_nullable
              as TextInputThemeData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TextInputThemeDataCopyWith<$Res> get textInputTheme {
    return $TextInputThemeDataCopyWith<$Res>(_value.textInputTheme, (value) {
      return _then(_value.copyWith(textInputTheme: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FormComponentThemeDataImplCopyWith<$Res>
    implements $FormComponentThemeDataCopyWith<$Res> {
  factory _$$FormComponentThemeDataImplCopyWith(
          _$FormComponentThemeDataImpl value,
          $Res Function(_$FormComponentThemeDataImpl) then) =
      __$$FormComponentThemeDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TextInputThemeData textInputTheme});

  @override
  $TextInputThemeDataCopyWith<$Res> get textInputTheme;
}

/// @nodoc
class __$$FormComponentThemeDataImplCopyWithImpl<$Res>
    extends _$FormComponentThemeDataCopyWithImpl<$Res,
        _$FormComponentThemeDataImpl>
    implements _$$FormComponentThemeDataImplCopyWith<$Res> {
  __$$FormComponentThemeDataImplCopyWithImpl(
      _$FormComponentThemeDataImpl _value,
      $Res Function(_$FormComponentThemeDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textInputTheme = null,
  }) {
    return _then(_$FormComponentThemeDataImpl(
      textInputTheme: null == textInputTheme
          ? _value.textInputTheme
          : textInputTheme // ignore: cast_nullable_to_non_nullable
              as TextInputThemeData,
    ));
  }
}

/// @nodoc

class _$FormComponentThemeDataImpl implements _FormComponentThemeData {
  const _$FormComponentThemeDataImpl({required this.textInputTheme});

  @override
  final TextInputThemeData textInputTheme;

  @override
  String toString() {
    return 'FormComponentThemeData(textInputTheme: $textInputTheme)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormComponentThemeDataImpl &&
            (identical(other.textInputTheme, textInputTheme) ||
                other.textInputTheme == textInputTheme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, textInputTheme);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormComponentThemeDataImplCopyWith<_$FormComponentThemeDataImpl>
      get copyWith => __$$FormComponentThemeDataImplCopyWithImpl<
          _$FormComponentThemeDataImpl>(this, _$identity);
}

abstract class _FormComponentThemeData implements FormComponentThemeData {
  const factory _FormComponentThemeData(
          {required final TextInputThemeData textInputTheme}) =
      _$FormComponentThemeDataImpl;

  @override
  TextInputThemeData get textInputTheme;
  @override
  @JsonKey(ignore: true)
  _$$FormComponentThemeDataImplCopyWith<_$FormComponentThemeDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
