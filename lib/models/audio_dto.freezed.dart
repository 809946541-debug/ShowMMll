// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AudioDto _$AudioDtoFromJson(Map<String, dynamic> json) {
  return _AudioDto.fromJson(json);
}

/// @nodoc
mixin _$AudioDto {
  @JsonKey(name: 'index')
  int? get index => throw _privateConstructorUsedError;
  @JsonKey(name: 'text')
  String? get text => throw _privateConstructorUsedError;
  @JsonKey(name: 'audio')
  String? get audio => throw _privateConstructorUsedError;

  /// Serializes this AudioDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AudioDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AudioDtoCopyWith<AudioDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioDtoCopyWith<$Res> {
  factory $AudioDtoCopyWith(AudioDto value, $Res Function(AudioDto) then) =
      _$AudioDtoCopyWithImpl<$Res, AudioDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'index') int? index,
      @JsonKey(name: 'text') String? text,
      @JsonKey(name: 'audio') String? audio});
}

/// @nodoc
class _$AudioDtoCopyWithImpl<$Res, $Val extends AudioDto>
    implements $AudioDtoCopyWith<$Res> {
  _$AudioDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AudioDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = freezed,
    Object? text = freezed,
    Object? audio = freezed,
  }) {
    return _then(_value.copyWith(
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      audio: freezed == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AudioDtoImplCopyWith<$Res>
    implements $AudioDtoCopyWith<$Res> {
  factory _$$AudioDtoImplCopyWith(
          _$AudioDtoImpl value, $Res Function(_$AudioDtoImpl) then) =
      __$$AudioDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'index') int? index,
      @JsonKey(name: 'text') String? text,
      @JsonKey(name: 'audio') String? audio});
}

/// @nodoc
class __$$AudioDtoImplCopyWithImpl<$Res>
    extends _$AudioDtoCopyWithImpl<$Res, _$AudioDtoImpl>
    implements _$$AudioDtoImplCopyWith<$Res> {
  __$$AudioDtoImplCopyWithImpl(
      _$AudioDtoImpl _value, $Res Function(_$AudioDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AudioDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = freezed,
    Object? text = freezed,
    Object? audio = freezed,
  }) {
    return _then(_$AudioDtoImpl(
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      audio: freezed == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$AudioDtoImpl extends _AudioDto {
  _$AudioDtoImpl(
      {@JsonKey(name: 'index') this.index,
      @JsonKey(name: 'text') this.text,
      @JsonKey(name: 'audio') this.audio})
      : super._();

  factory _$AudioDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AudioDtoImplFromJson(json);

  @override
  @JsonKey(name: 'index')
  final int? index;
  @override
  @JsonKey(name: 'text')
  final String? text;
  @override
  @JsonKey(name: 'audio')
  final String? audio;

  @override
  String toString() {
    return 'AudioDto(index: $index, text: $text, audio: $audio)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioDtoImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.audio, audio) || other.audio == audio));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, index, text, audio);

  /// Create a copy of AudioDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioDtoImplCopyWith<_$AudioDtoImpl> get copyWith =>
      __$$AudioDtoImplCopyWithImpl<_$AudioDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AudioDtoImplToJson(
      this,
    );
  }
}

abstract class _AudioDto extends AudioDto {
  factory _AudioDto(
      {@JsonKey(name: 'index') final int? index,
      @JsonKey(name: 'text') final String? text,
      @JsonKey(name: 'audio') final String? audio}) = _$AudioDtoImpl;
  _AudioDto._() : super._();

  factory _AudioDto.fromJson(Map<String, dynamic> json) =
      _$AudioDtoImpl.fromJson;

  @override
  @JsonKey(name: 'index')
  int? get index;
  @override
  @JsonKey(name: 'text')
  String? get text;
  @override
  @JsonKey(name: 'audio')
  String? get audio;

  /// Create a copy of AudioDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AudioDtoImplCopyWith<_$AudioDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
