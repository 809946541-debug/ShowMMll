// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CoverConfigItem _$CoverConfigItemFromJson(Map<String, dynamic> json) {
  return _CoverConfigItem.fromJson(json);
}

/// @nodoc
mixin _$CoverConfigItem {
  @JsonKey(name: 'imagePath')
  String? get imagePath => throw _privateConstructorUsedError;

  /// Serializes this CoverConfigItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CoverConfigItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoverConfigItemCopyWith<CoverConfigItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoverConfigItemCopyWith<$Res> {
  factory $CoverConfigItemCopyWith(
          CoverConfigItem value, $Res Function(CoverConfigItem) then) =
      _$CoverConfigItemCopyWithImpl<$Res, CoverConfigItem>;
  @useResult
  $Res call({@JsonKey(name: 'imagePath') String? imagePath});
}

/// @nodoc
class _$CoverConfigItemCopyWithImpl<$Res, $Val extends CoverConfigItem>
    implements $CoverConfigItemCopyWith<$Res> {
  _$CoverConfigItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoverConfigItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = freezed,
  }) {
    return _then(_value.copyWith(
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoverConfigItemImplCopyWith<$Res>
    implements $CoverConfigItemCopyWith<$Res> {
  factory _$$CoverConfigItemImplCopyWith(_$CoverConfigItemImpl value,
          $Res Function(_$CoverConfigItemImpl) then) =
      __$$CoverConfigItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'imagePath') String? imagePath});
}

/// @nodoc
class __$$CoverConfigItemImplCopyWithImpl<$Res>
    extends _$CoverConfigItemCopyWithImpl<$Res, _$CoverConfigItemImpl>
    implements _$$CoverConfigItemImplCopyWith<$Res> {
  __$$CoverConfigItemImplCopyWithImpl(
      _$CoverConfigItemImpl _value, $Res Function(_$CoverConfigItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoverConfigItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = freezed,
  }) {
    return _then(_$CoverConfigItemImpl(
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$CoverConfigItemImpl implements _CoverConfigItem {
  _$CoverConfigItemImpl({@JsonKey(name: 'imagePath') this.imagePath});

  factory _$CoverConfigItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoverConfigItemImplFromJson(json);

  @override
  @JsonKey(name: 'imagePath')
  final String? imagePath;

  @override
  String toString() {
    return 'CoverConfigItem(imagePath: $imagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoverConfigItemImpl &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, imagePath);

  /// Create a copy of CoverConfigItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoverConfigItemImplCopyWith<_$CoverConfigItemImpl> get copyWith =>
      __$$CoverConfigItemImplCopyWithImpl<_$CoverConfigItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoverConfigItemImplToJson(
      this,
    );
  }
}

abstract class _CoverConfigItem implements CoverConfigItem {
  factory _CoverConfigItem(
          {@JsonKey(name: 'imagePath') final String? imagePath}) =
      _$CoverConfigItemImpl;

  factory _CoverConfigItem.fromJson(Map<String, dynamic> json) =
      _$CoverConfigItemImpl.fromJson;

  @override
  @JsonKey(name: 'imagePath')
  String? get imagePath;

  /// Create a copy of CoverConfigItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoverConfigItemImplCopyWith<_$CoverConfigItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SplashConfigItem _$SplashConfigItemFromJson(Map<String, dynamic> json) {
  return _SplashConfigItem.fromJson(json);
}

/// @nodoc
mixin _$SplashConfigItem {
  @JsonKey(name: 'imagePath')
  String? get imagePath => throw _privateConstructorUsedError;
  @JsonKey(name: 'navPath')
  String? get navPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'query')
  String? get query => throw _privateConstructorUsedError;

  /// Serializes this SplashConfigItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SplashConfigItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SplashConfigItemCopyWith<SplashConfigItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashConfigItemCopyWith<$Res> {
  factory $SplashConfigItemCopyWith(
          SplashConfigItem value, $Res Function(SplashConfigItem) then) =
      _$SplashConfigItemCopyWithImpl<$Res, SplashConfigItem>;
  @useResult
  $Res call(
      {@JsonKey(name: 'imagePath') String? imagePath,
      @JsonKey(name: 'navPath') String? navPath,
      @JsonKey(name: 'query') String? query});
}

/// @nodoc
class _$SplashConfigItemCopyWithImpl<$Res, $Val extends SplashConfigItem>
    implements $SplashConfigItemCopyWith<$Res> {
  _$SplashConfigItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SplashConfigItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = freezed,
    Object? navPath = freezed,
    Object? query = freezed,
  }) {
    return _then(_value.copyWith(
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      navPath: freezed == navPath
          ? _value.navPath
          : navPath // ignore: cast_nullable_to_non_nullable
              as String?,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SplashConfigItemImplCopyWith<$Res>
    implements $SplashConfigItemCopyWith<$Res> {
  factory _$$SplashConfigItemImplCopyWith(_$SplashConfigItemImpl value,
          $Res Function(_$SplashConfigItemImpl) then) =
      __$$SplashConfigItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'imagePath') String? imagePath,
      @JsonKey(name: 'navPath') String? navPath,
      @JsonKey(name: 'query') String? query});
}

/// @nodoc
class __$$SplashConfigItemImplCopyWithImpl<$Res>
    extends _$SplashConfigItemCopyWithImpl<$Res, _$SplashConfigItemImpl>
    implements _$$SplashConfigItemImplCopyWith<$Res> {
  __$$SplashConfigItemImplCopyWithImpl(_$SplashConfigItemImpl _value,
      $Res Function(_$SplashConfigItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of SplashConfigItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = freezed,
    Object? navPath = freezed,
    Object? query = freezed,
  }) {
    return _then(_$SplashConfigItemImpl(
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      navPath: freezed == navPath
          ? _value.navPath
          : navPath // ignore: cast_nullable_to_non_nullable
              as String?,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$SplashConfigItemImpl implements _SplashConfigItem {
  _$SplashConfigItemImpl(
      {@JsonKey(name: 'imagePath') this.imagePath,
      @JsonKey(name: 'navPath') this.navPath,
      @JsonKey(name: 'query') this.query});

  factory _$SplashConfigItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$SplashConfigItemImplFromJson(json);

  @override
  @JsonKey(name: 'imagePath')
  final String? imagePath;
  @override
  @JsonKey(name: 'navPath')
  final String? navPath;
  @override
  @JsonKey(name: 'query')
  final String? query;

  @override
  String toString() {
    return 'SplashConfigItem(imagePath: $imagePath, navPath: $navPath, query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SplashConfigItemImpl &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.navPath, navPath) || other.navPath == navPath) &&
            (identical(other.query, query) || other.query == query));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, imagePath, navPath, query);

  /// Create a copy of SplashConfigItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SplashConfigItemImplCopyWith<_$SplashConfigItemImpl> get copyWith =>
      __$$SplashConfigItemImplCopyWithImpl<_$SplashConfigItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SplashConfigItemImplToJson(
      this,
    );
  }
}

abstract class _SplashConfigItem implements SplashConfigItem {
  factory _SplashConfigItem(
      {@JsonKey(name: 'imagePath') final String? imagePath,
      @JsonKey(name: 'navPath') final String? navPath,
      @JsonKey(name: 'query') final String? query}) = _$SplashConfigItemImpl;

  factory _SplashConfigItem.fromJson(Map<String, dynamic> json) =
      _$SplashConfigItemImpl.fromJson;

  @override
  @JsonKey(name: 'imagePath')
  String? get imagePath;
  @override
  @JsonKey(name: 'navPath')
  String? get navPath;
  @override
  @JsonKey(name: 'query')
  String? get query;

  /// Create a copy of SplashConfigItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SplashConfigItemImplCopyWith<_$SplashConfigItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CoverConfig _$CoverConfigFromJson(Map<String, dynamic> json) {
  return _CoverConfig.fromJson(json);
}

/// @nodoc
mixin _$CoverConfig {
  @JsonKey(name: 'version')
  double? get version => throw _privateConstructorUsedError;
  @JsonKey(name: 'items')
  List<CoverConfigItem>? get itemList => throw _privateConstructorUsedError;

  /// Serializes this CoverConfig to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CoverConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoverConfigCopyWith<CoverConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoverConfigCopyWith<$Res> {
  factory $CoverConfigCopyWith(
          CoverConfig value, $Res Function(CoverConfig) then) =
      _$CoverConfigCopyWithImpl<$Res, CoverConfig>;
  @useResult
  $Res call(
      {@JsonKey(name: 'version') double? version,
      @JsonKey(name: 'items') List<CoverConfigItem>? itemList});
}

/// @nodoc
class _$CoverConfigCopyWithImpl<$Res, $Val extends CoverConfig>
    implements $CoverConfigCopyWith<$Res> {
  _$CoverConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoverConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = freezed,
    Object? itemList = freezed,
  }) {
    return _then(_value.copyWith(
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as double?,
      itemList: freezed == itemList
          ? _value.itemList
          : itemList // ignore: cast_nullable_to_non_nullable
              as List<CoverConfigItem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoverConfigImplCopyWith<$Res>
    implements $CoverConfigCopyWith<$Res> {
  factory _$$CoverConfigImplCopyWith(
          _$CoverConfigImpl value, $Res Function(_$CoverConfigImpl) then) =
      __$$CoverConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'version') double? version,
      @JsonKey(name: 'items') List<CoverConfigItem>? itemList});
}

/// @nodoc
class __$$CoverConfigImplCopyWithImpl<$Res>
    extends _$CoverConfigCopyWithImpl<$Res, _$CoverConfigImpl>
    implements _$$CoverConfigImplCopyWith<$Res> {
  __$$CoverConfigImplCopyWithImpl(
      _$CoverConfigImpl _value, $Res Function(_$CoverConfigImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoverConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = freezed,
    Object? itemList = freezed,
  }) {
    return _then(_$CoverConfigImpl(
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as double?,
      itemList: freezed == itemList
          ? _value._itemList
          : itemList // ignore: cast_nullable_to_non_nullable
              as List<CoverConfigItem>?,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$CoverConfigImpl implements _CoverConfig {
  _$CoverConfigImpl(
      {@JsonKey(name: 'version') this.version,
      @JsonKey(name: 'items') final List<CoverConfigItem>? itemList})
      : _itemList = itemList;

  factory _$CoverConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoverConfigImplFromJson(json);

  @override
  @JsonKey(name: 'version')
  final double? version;
  final List<CoverConfigItem>? _itemList;
  @override
  @JsonKey(name: 'items')
  List<CoverConfigItem>? get itemList {
    final value = _itemList;
    if (value == null) return null;
    if (_itemList is EqualUnmodifiableListView) return _itemList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CoverConfig(version: $version, itemList: $itemList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoverConfigImpl &&
            (identical(other.version, version) || other.version == version) &&
            const DeepCollectionEquality().equals(other._itemList, _itemList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, version, const DeepCollectionEquality().hash(_itemList));

  /// Create a copy of CoverConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoverConfigImplCopyWith<_$CoverConfigImpl> get copyWith =>
      __$$CoverConfigImplCopyWithImpl<_$CoverConfigImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoverConfigImplToJson(
      this,
    );
  }
}

abstract class _CoverConfig implements CoverConfig {
  factory _CoverConfig(
          {@JsonKey(name: 'version') final double? version,
          @JsonKey(name: 'items') final List<CoverConfigItem>? itemList}) =
      _$CoverConfigImpl;

  factory _CoverConfig.fromJson(Map<String, dynamic> json) =
      _$CoverConfigImpl.fromJson;

  @override
  @JsonKey(name: 'version')
  double? get version;
  @override
  @JsonKey(name: 'items')
  List<CoverConfigItem>? get itemList;

  /// Create a copy of CoverConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoverConfigImplCopyWith<_$CoverConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SplashConfig _$SplashConfigFromJson(Map<String, dynamic> json) {
  return _SplashConfig.fromJson(json);
}

/// @nodoc
mixin _$SplashConfig {
  @JsonKey(name: 'version')
  double? get version => throw _privateConstructorUsedError;
  @JsonKey(name: 'timeSpan')
  int? get timeSpan => throw _privateConstructorUsedError;
  @JsonKey(name: 'items')
  List<SplashConfigItem>? get itemList => throw _privateConstructorUsedError;

  /// Serializes this SplashConfig to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SplashConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SplashConfigCopyWith<SplashConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashConfigCopyWith<$Res> {
  factory $SplashConfigCopyWith(
          SplashConfig value, $Res Function(SplashConfig) then) =
      _$SplashConfigCopyWithImpl<$Res, SplashConfig>;
  @useResult
  $Res call(
      {@JsonKey(name: 'version') double? version,
      @JsonKey(name: 'timeSpan') int? timeSpan,
      @JsonKey(name: 'items') List<SplashConfigItem>? itemList});
}

/// @nodoc
class _$SplashConfigCopyWithImpl<$Res, $Val extends SplashConfig>
    implements $SplashConfigCopyWith<$Res> {
  _$SplashConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SplashConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = freezed,
    Object? timeSpan = freezed,
    Object? itemList = freezed,
  }) {
    return _then(_value.copyWith(
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as double?,
      timeSpan: freezed == timeSpan
          ? _value.timeSpan
          : timeSpan // ignore: cast_nullable_to_non_nullable
              as int?,
      itemList: freezed == itemList
          ? _value.itemList
          : itemList // ignore: cast_nullable_to_non_nullable
              as List<SplashConfigItem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SplashConfigImplCopyWith<$Res>
    implements $SplashConfigCopyWith<$Res> {
  factory _$$SplashConfigImplCopyWith(
          _$SplashConfigImpl value, $Res Function(_$SplashConfigImpl) then) =
      __$$SplashConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'version') double? version,
      @JsonKey(name: 'timeSpan') int? timeSpan,
      @JsonKey(name: 'items') List<SplashConfigItem>? itemList});
}

/// @nodoc
class __$$SplashConfigImplCopyWithImpl<$Res>
    extends _$SplashConfigCopyWithImpl<$Res, _$SplashConfigImpl>
    implements _$$SplashConfigImplCopyWith<$Res> {
  __$$SplashConfigImplCopyWithImpl(
      _$SplashConfigImpl _value, $Res Function(_$SplashConfigImpl) _then)
      : super(_value, _then);

  /// Create a copy of SplashConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = freezed,
    Object? timeSpan = freezed,
    Object? itemList = freezed,
  }) {
    return _then(_$SplashConfigImpl(
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as double?,
      timeSpan: freezed == timeSpan
          ? _value.timeSpan
          : timeSpan // ignore: cast_nullable_to_non_nullable
              as int?,
      itemList: freezed == itemList
          ? _value._itemList
          : itemList // ignore: cast_nullable_to_non_nullable
              as List<SplashConfigItem>?,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$SplashConfigImpl implements _SplashConfig {
  _$SplashConfigImpl(
      {@JsonKey(name: 'version') this.version,
      @JsonKey(name: 'timeSpan') this.timeSpan,
      @JsonKey(name: 'items') final List<SplashConfigItem>? itemList})
      : _itemList = itemList;

  factory _$SplashConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$SplashConfigImplFromJson(json);

  @override
  @JsonKey(name: 'version')
  final double? version;
  @override
  @JsonKey(name: 'timeSpan')
  final int? timeSpan;
  final List<SplashConfigItem>? _itemList;
  @override
  @JsonKey(name: 'items')
  List<SplashConfigItem>? get itemList {
    final value = _itemList;
    if (value == null) return null;
    if (_itemList is EqualUnmodifiableListView) return _itemList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SplashConfig(version: $version, timeSpan: $timeSpan, itemList: $itemList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SplashConfigImpl &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.timeSpan, timeSpan) ||
                other.timeSpan == timeSpan) &&
            const DeepCollectionEquality().equals(other._itemList, _itemList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, version, timeSpan,
      const DeepCollectionEquality().hash(_itemList));

  /// Create a copy of SplashConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SplashConfigImplCopyWith<_$SplashConfigImpl> get copyWith =>
      __$$SplashConfigImplCopyWithImpl<_$SplashConfigImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SplashConfigImplToJson(
      this,
    );
  }
}

abstract class _SplashConfig implements SplashConfig {
  factory _SplashConfig(
          {@JsonKey(name: 'version') final double? version,
          @JsonKey(name: 'timeSpan') final int? timeSpan,
          @JsonKey(name: 'items') final List<SplashConfigItem>? itemList}) =
      _$SplashConfigImpl;

  factory _SplashConfig.fromJson(Map<String, dynamic> json) =
      _$SplashConfigImpl.fromJson;

  @override
  @JsonKey(name: 'version')
  double? get version;
  @override
  @JsonKey(name: 'timeSpan')
  int? get timeSpan;
  @override
  @JsonKey(name: 'items')
  List<SplashConfigItem>? get itemList;

  /// Create a copy of SplashConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SplashConfigImplCopyWith<_$SplashConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AndroidVersionInfo _$AndroidVersionInfoFromJson(Map<String, dynamic> json) {
  return _AndroidVersionInfo.fromJson(json);
}

/// @nodoc
mixin _$AndroidVersionInfo {
  @JsonKey(name: 'version')
  int? get version => throw _privateConstructorUsedError;
  @JsonKey(name: 'auditBuild')
  int? get auditBuild => throw _privateConstructorUsedError;
  @JsonKey(name: 'audit')
  bool? get audit => throw _privateConstructorUsedError;
  @JsonKey(name: 'updateUrl')
  String? get updateUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'updateMsg')
  String? get updateMsg => throw _privateConstructorUsedError;

  /// Serializes this AndroidVersionInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AndroidVersionInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AndroidVersionInfoCopyWith<AndroidVersionInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AndroidVersionInfoCopyWith<$Res> {
  factory $AndroidVersionInfoCopyWith(
          AndroidVersionInfo value, $Res Function(AndroidVersionInfo) then) =
      _$AndroidVersionInfoCopyWithImpl<$Res, AndroidVersionInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'version') int? version,
      @JsonKey(name: 'auditBuild') int? auditBuild,
      @JsonKey(name: 'audit') bool? audit,
      @JsonKey(name: 'updateUrl') String? updateUrl,
      @JsonKey(name: 'updateMsg') String? updateMsg});
}

/// @nodoc
class _$AndroidVersionInfoCopyWithImpl<$Res, $Val extends AndroidVersionInfo>
    implements $AndroidVersionInfoCopyWith<$Res> {
  _$AndroidVersionInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AndroidVersionInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = freezed,
    Object? auditBuild = freezed,
    Object? audit = freezed,
    Object? updateUrl = freezed,
    Object? updateMsg = freezed,
  }) {
    return _then(_value.copyWith(
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
      auditBuild: freezed == auditBuild
          ? _value.auditBuild
          : auditBuild // ignore: cast_nullable_to_non_nullable
              as int?,
      audit: freezed == audit
          ? _value.audit
          : audit // ignore: cast_nullable_to_non_nullable
              as bool?,
      updateUrl: freezed == updateUrl
          ? _value.updateUrl
          : updateUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      updateMsg: freezed == updateMsg
          ? _value.updateMsg
          : updateMsg // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AndroidVersionInfoImplCopyWith<$Res>
    implements $AndroidVersionInfoCopyWith<$Res> {
  factory _$$AndroidVersionInfoImplCopyWith(_$AndroidVersionInfoImpl value,
          $Res Function(_$AndroidVersionInfoImpl) then) =
      __$$AndroidVersionInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'version') int? version,
      @JsonKey(name: 'auditBuild') int? auditBuild,
      @JsonKey(name: 'audit') bool? audit,
      @JsonKey(name: 'updateUrl') String? updateUrl,
      @JsonKey(name: 'updateMsg') String? updateMsg});
}

/// @nodoc
class __$$AndroidVersionInfoImplCopyWithImpl<$Res>
    extends _$AndroidVersionInfoCopyWithImpl<$Res, _$AndroidVersionInfoImpl>
    implements _$$AndroidVersionInfoImplCopyWith<$Res> {
  __$$AndroidVersionInfoImplCopyWithImpl(_$AndroidVersionInfoImpl _value,
      $Res Function(_$AndroidVersionInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AndroidVersionInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = freezed,
    Object? auditBuild = freezed,
    Object? audit = freezed,
    Object? updateUrl = freezed,
    Object? updateMsg = freezed,
  }) {
    return _then(_$AndroidVersionInfoImpl(
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
      auditBuild: freezed == auditBuild
          ? _value.auditBuild
          : auditBuild // ignore: cast_nullable_to_non_nullable
              as int?,
      audit: freezed == audit
          ? _value.audit
          : audit // ignore: cast_nullable_to_non_nullable
              as bool?,
      updateUrl: freezed == updateUrl
          ? _value.updateUrl
          : updateUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      updateMsg: freezed == updateMsg
          ? _value.updateMsg
          : updateMsg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$AndroidVersionInfoImpl implements _AndroidVersionInfo {
  _$AndroidVersionInfoImpl(
      {@JsonKey(name: 'version') this.version,
      @JsonKey(name: 'auditBuild') this.auditBuild,
      @JsonKey(name: 'audit') this.audit,
      @JsonKey(name: 'updateUrl') this.updateUrl,
      @JsonKey(name: 'updateMsg') this.updateMsg});

  factory _$AndroidVersionInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AndroidVersionInfoImplFromJson(json);

  @override
  @JsonKey(name: 'version')
  final int? version;
  @override
  @JsonKey(name: 'auditBuild')
  final int? auditBuild;
  @override
  @JsonKey(name: 'audit')
  final bool? audit;
  @override
  @JsonKey(name: 'updateUrl')
  final String? updateUrl;
  @override
  @JsonKey(name: 'updateMsg')
  final String? updateMsg;

  @override
  String toString() {
    return 'AndroidVersionInfo(version: $version, auditBuild: $auditBuild, audit: $audit, updateUrl: $updateUrl, updateMsg: $updateMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AndroidVersionInfoImpl &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.auditBuild, auditBuild) ||
                other.auditBuild == auditBuild) &&
            (identical(other.audit, audit) || other.audit == audit) &&
            (identical(other.updateUrl, updateUrl) ||
                other.updateUrl == updateUrl) &&
            (identical(other.updateMsg, updateMsg) ||
                other.updateMsg == updateMsg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, version, auditBuild, audit, updateUrl, updateMsg);

  /// Create a copy of AndroidVersionInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AndroidVersionInfoImplCopyWith<_$AndroidVersionInfoImpl> get copyWith =>
      __$$AndroidVersionInfoImplCopyWithImpl<_$AndroidVersionInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AndroidVersionInfoImplToJson(
      this,
    );
  }
}

abstract class _AndroidVersionInfo implements AndroidVersionInfo {
  factory _AndroidVersionInfo(
          {@JsonKey(name: 'version') final int? version,
          @JsonKey(name: 'auditBuild') final int? auditBuild,
          @JsonKey(name: 'audit') final bool? audit,
          @JsonKey(name: 'updateUrl') final String? updateUrl,
          @JsonKey(name: 'updateMsg') final String? updateMsg}) =
      _$AndroidVersionInfoImpl;

  factory _AndroidVersionInfo.fromJson(Map<String, dynamic> json) =
      _$AndroidVersionInfoImpl.fromJson;

  @override
  @JsonKey(name: 'version')
  int? get version;
  @override
  @JsonKey(name: 'auditBuild')
  int? get auditBuild;
  @override
  @JsonKey(name: 'audit')
  bool? get audit;
  @override
  @JsonKey(name: 'updateUrl')
  String? get updateUrl;
  @override
  @JsonKey(name: 'updateMsg')
  String? get updateMsg;

  /// Create a copy of AndroidVersionInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AndroidVersionInfoImplCopyWith<_$AndroidVersionInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IOSVersionInfo _$IOSVersionInfoFromJson(Map<String, dynamic> json) {
  return _IOSVersionInfo.fromJson(json);
}

/// @nodoc
mixin _$IOSVersionInfo {
  @JsonKey(name: 'version')
  int? get version => throw _privateConstructorUsedError;
  @JsonKey(name: 'auditBuild')
  int? get auditBuild => throw _privateConstructorUsedError;
  @JsonKey(name: 'audit')
  bool? get audit => throw _privateConstructorUsedError;
  @JsonKey(name: 'updateUrl')
  String? get updateUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'updateMsg')
  String? get updateMsg => throw _privateConstructorUsedError;

  /// Serializes this IOSVersionInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IOSVersionInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IOSVersionInfoCopyWith<IOSVersionInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IOSVersionInfoCopyWith<$Res> {
  factory $IOSVersionInfoCopyWith(
          IOSVersionInfo value, $Res Function(IOSVersionInfo) then) =
      _$IOSVersionInfoCopyWithImpl<$Res, IOSVersionInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'version') int? version,
      @JsonKey(name: 'auditBuild') int? auditBuild,
      @JsonKey(name: 'audit') bool? audit,
      @JsonKey(name: 'updateUrl') String? updateUrl,
      @JsonKey(name: 'updateMsg') String? updateMsg});
}

/// @nodoc
class _$IOSVersionInfoCopyWithImpl<$Res, $Val extends IOSVersionInfo>
    implements $IOSVersionInfoCopyWith<$Res> {
  _$IOSVersionInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IOSVersionInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = freezed,
    Object? auditBuild = freezed,
    Object? audit = freezed,
    Object? updateUrl = freezed,
    Object? updateMsg = freezed,
  }) {
    return _then(_value.copyWith(
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
      auditBuild: freezed == auditBuild
          ? _value.auditBuild
          : auditBuild // ignore: cast_nullable_to_non_nullable
              as int?,
      audit: freezed == audit
          ? _value.audit
          : audit // ignore: cast_nullable_to_non_nullable
              as bool?,
      updateUrl: freezed == updateUrl
          ? _value.updateUrl
          : updateUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      updateMsg: freezed == updateMsg
          ? _value.updateMsg
          : updateMsg // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IOSVersionInfoImplCopyWith<$Res>
    implements $IOSVersionInfoCopyWith<$Res> {
  factory _$$IOSVersionInfoImplCopyWith(_$IOSVersionInfoImpl value,
          $Res Function(_$IOSVersionInfoImpl) then) =
      __$$IOSVersionInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'version') int? version,
      @JsonKey(name: 'auditBuild') int? auditBuild,
      @JsonKey(name: 'audit') bool? audit,
      @JsonKey(name: 'updateUrl') String? updateUrl,
      @JsonKey(name: 'updateMsg') String? updateMsg});
}

/// @nodoc
class __$$IOSVersionInfoImplCopyWithImpl<$Res>
    extends _$IOSVersionInfoCopyWithImpl<$Res, _$IOSVersionInfoImpl>
    implements _$$IOSVersionInfoImplCopyWith<$Res> {
  __$$IOSVersionInfoImplCopyWithImpl(
      _$IOSVersionInfoImpl _value, $Res Function(_$IOSVersionInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of IOSVersionInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = freezed,
    Object? auditBuild = freezed,
    Object? audit = freezed,
    Object? updateUrl = freezed,
    Object? updateMsg = freezed,
  }) {
    return _then(_$IOSVersionInfoImpl(
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
      auditBuild: freezed == auditBuild
          ? _value.auditBuild
          : auditBuild // ignore: cast_nullable_to_non_nullable
              as int?,
      audit: freezed == audit
          ? _value.audit
          : audit // ignore: cast_nullable_to_non_nullable
              as bool?,
      updateUrl: freezed == updateUrl
          ? _value.updateUrl
          : updateUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      updateMsg: freezed == updateMsg
          ? _value.updateMsg
          : updateMsg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$IOSVersionInfoImpl implements _IOSVersionInfo {
  _$IOSVersionInfoImpl(
      {@JsonKey(name: 'version') this.version,
      @JsonKey(name: 'auditBuild') this.auditBuild,
      @JsonKey(name: 'audit') this.audit,
      @JsonKey(name: 'updateUrl') this.updateUrl,
      @JsonKey(name: 'updateMsg') this.updateMsg});

  factory _$IOSVersionInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$IOSVersionInfoImplFromJson(json);

  @override
  @JsonKey(name: 'version')
  final int? version;
  @override
  @JsonKey(name: 'auditBuild')
  final int? auditBuild;
  @override
  @JsonKey(name: 'audit')
  final bool? audit;
  @override
  @JsonKey(name: 'updateUrl')
  final String? updateUrl;
  @override
  @JsonKey(name: 'updateMsg')
  final String? updateMsg;

  @override
  String toString() {
    return 'IOSVersionInfo(version: $version, auditBuild: $auditBuild, audit: $audit, updateUrl: $updateUrl, updateMsg: $updateMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IOSVersionInfoImpl &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.auditBuild, auditBuild) ||
                other.auditBuild == auditBuild) &&
            (identical(other.audit, audit) || other.audit == audit) &&
            (identical(other.updateUrl, updateUrl) ||
                other.updateUrl == updateUrl) &&
            (identical(other.updateMsg, updateMsg) ||
                other.updateMsg == updateMsg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, version, auditBuild, audit, updateUrl, updateMsg);

  /// Create a copy of IOSVersionInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IOSVersionInfoImplCopyWith<_$IOSVersionInfoImpl> get copyWith =>
      __$$IOSVersionInfoImplCopyWithImpl<_$IOSVersionInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IOSVersionInfoImplToJson(
      this,
    );
  }
}

abstract class _IOSVersionInfo implements IOSVersionInfo {
  factory _IOSVersionInfo(
          {@JsonKey(name: 'version') final int? version,
          @JsonKey(name: 'auditBuild') final int? auditBuild,
          @JsonKey(name: 'audit') final bool? audit,
          @JsonKey(name: 'updateUrl') final String? updateUrl,
          @JsonKey(name: 'updateMsg') final String? updateMsg}) =
      _$IOSVersionInfoImpl;

  factory _IOSVersionInfo.fromJson(Map<String, dynamic> json) =
      _$IOSVersionInfoImpl.fromJson;

  @override
  @JsonKey(name: 'version')
  int? get version;
  @override
  @JsonKey(name: 'auditBuild')
  int? get auditBuild;
  @override
  @JsonKey(name: 'audit')
  bool? get audit;
  @override
  @JsonKey(name: 'updateUrl')
  String? get updateUrl;
  @override
  @JsonKey(name: 'updateMsg')
  String? get updateMsg;

  /// Create a copy of IOSVersionInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IOSVersionInfoImplCopyWith<_$IOSVersionInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AppConfig _$AppConfigFromJson(Map<String, dynamic> json) {
  return _AppConfig.fromJson(json);
}

/// @nodoc
mixin _$AppConfig {
  @JsonKey(name: 'splash')
  SplashConfig? get splashConfig => throw _privateConstructorUsedError;
  @JsonKey(name: 'cover')
  CoverConfig? get coverConfig => throw _privateConstructorUsedError;
  @JsonKey(name: 'vipType')
  String? get vipType => throw _privateConstructorUsedError;
  @JsonKey(name: 'langOption')
  Map<String, String>? get langOption => throw _privateConstructorUsedError;
  @JsonKey(name: 'derection')
  String? get derection => throw _privateConstructorUsedError;
  @JsonKey(name: 'android')
  AndroidVersionInfo? get androidVersionInfo =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'iOS')
  IOSVersionInfo? get iosVersionInfo =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'ossUrl') String? ossUrl,
  @JsonKey(name: 'langs')
  List<Map<String, dynamic>>? get languageList =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'dialogue')
  List<Map<String, dynamic>>? get openingDialog =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'logins')
  Map<String, dynamic>? get loginDialog => throw _privateConstructorUsedError;
  @JsonKey(name: 'updateForced')
  bool? get updateForced => throw _privateConstructorUsedError;
  @JsonKey(name: 'encoding')
  String? get encoding => throw _privateConstructorUsedError;
  @JsonKey(name: 'recommendMaxCount')
  int? get recommendMaxCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'timeMinutes')
  int? get timeMinutes => throw _privateConstructorUsedError;
  @JsonKey(name: 'timeEnable')
  bool? get timeEnable => throw _privateConstructorUsedError;
  @JsonKey(name: 'isFacebookLoginEnabled')
  bool? get isFacebookLoginEnabled => throw _privateConstructorUsedError;
  @JsonKey(name: 'isHideBookSubscription')
  bool? get isHideBookSubscription => throw _privateConstructorUsedError;
  @JsonKey(name: 'lang')
  String? get lang => throw _privateConstructorUsedError;

  /// Serializes this AppConfig to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppConfigCopyWith<AppConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppConfigCopyWith<$Res> {
  factory $AppConfigCopyWith(AppConfig value, $Res Function(AppConfig) then) =
      _$AppConfigCopyWithImpl<$Res, AppConfig>;
  @useResult
  $Res call(
      {@JsonKey(name: 'splash') SplashConfig? splashConfig,
      @JsonKey(name: 'cover') CoverConfig? coverConfig,
      @JsonKey(name: 'vipType') String? vipType,
      @JsonKey(name: 'langOption') Map<String, String>? langOption,
      @JsonKey(name: 'derection') String? derection,
      @JsonKey(name: 'android') AndroidVersionInfo? androidVersionInfo,
      @JsonKey(name: 'iOS') IOSVersionInfo? iosVersionInfo,
      @JsonKey(name: 'langs') List<Map<String, dynamic>>? languageList,
      @JsonKey(name: 'dialogue') List<Map<String, dynamic>>? openingDialog,
      @JsonKey(name: 'logins') Map<String, dynamic>? loginDialog,
      @JsonKey(name: 'updateForced') bool? updateForced,
      @JsonKey(name: 'encoding') String? encoding,
      @JsonKey(name: 'recommendMaxCount') int? recommendMaxCount,
      @JsonKey(name: 'timeMinutes') int? timeMinutes,
      @JsonKey(name: 'timeEnable') bool? timeEnable,
      @JsonKey(name: 'isFacebookLoginEnabled') bool? isFacebookLoginEnabled,
      @JsonKey(name: 'isHideBookSubscription') bool? isHideBookSubscription,
      @JsonKey(name: 'lang') String? lang});

  $SplashConfigCopyWith<$Res>? get splashConfig;
  $CoverConfigCopyWith<$Res>? get coverConfig;
  $AndroidVersionInfoCopyWith<$Res>? get androidVersionInfo;
  $IOSVersionInfoCopyWith<$Res>? get iosVersionInfo;
}

/// @nodoc
class _$AppConfigCopyWithImpl<$Res, $Val extends AppConfig>
    implements $AppConfigCopyWith<$Res> {
  _$AppConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? splashConfig = freezed,
    Object? coverConfig = freezed,
    Object? vipType = freezed,
    Object? langOption = freezed,
    Object? derection = freezed,
    Object? androidVersionInfo = freezed,
    Object? iosVersionInfo = freezed,
    Object? languageList = freezed,
    Object? openingDialog = freezed,
    Object? loginDialog = freezed,
    Object? updateForced = freezed,
    Object? encoding = freezed,
    Object? recommendMaxCount = freezed,
    Object? timeMinutes = freezed,
    Object? timeEnable = freezed,
    Object? isFacebookLoginEnabled = freezed,
    Object? isHideBookSubscription = freezed,
    Object? lang = freezed,
  }) {
    return _then(_value.copyWith(
      splashConfig: freezed == splashConfig
          ? _value.splashConfig
          : splashConfig // ignore: cast_nullable_to_non_nullable
              as SplashConfig?,
      coverConfig: freezed == coverConfig
          ? _value.coverConfig
          : coverConfig // ignore: cast_nullable_to_non_nullable
              as CoverConfig?,
      vipType: freezed == vipType
          ? _value.vipType
          : vipType // ignore: cast_nullable_to_non_nullable
              as String?,
      langOption: freezed == langOption
          ? _value.langOption
          : langOption // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      derection: freezed == derection
          ? _value.derection
          : derection // ignore: cast_nullable_to_non_nullable
              as String?,
      androidVersionInfo: freezed == androidVersionInfo
          ? _value.androidVersionInfo
          : androidVersionInfo // ignore: cast_nullable_to_non_nullable
              as AndroidVersionInfo?,
      iosVersionInfo: freezed == iosVersionInfo
          ? _value.iosVersionInfo
          : iosVersionInfo // ignore: cast_nullable_to_non_nullable
              as IOSVersionInfo?,
      languageList: freezed == languageList
          ? _value.languageList
          : languageList // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
      openingDialog: freezed == openingDialog
          ? _value.openingDialog
          : openingDialog // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
      loginDialog: freezed == loginDialog
          ? _value.loginDialog
          : loginDialog // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      updateForced: freezed == updateForced
          ? _value.updateForced
          : updateForced // ignore: cast_nullable_to_non_nullable
              as bool?,
      encoding: freezed == encoding
          ? _value.encoding
          : encoding // ignore: cast_nullable_to_non_nullable
              as String?,
      recommendMaxCount: freezed == recommendMaxCount
          ? _value.recommendMaxCount
          : recommendMaxCount // ignore: cast_nullable_to_non_nullable
              as int?,
      timeMinutes: freezed == timeMinutes
          ? _value.timeMinutes
          : timeMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      timeEnable: freezed == timeEnable
          ? _value.timeEnable
          : timeEnable // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFacebookLoginEnabled: freezed == isFacebookLoginEnabled
          ? _value.isFacebookLoginEnabled
          : isFacebookLoginEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      isHideBookSubscription: freezed == isHideBookSubscription
          ? _value.isHideBookSubscription
          : isHideBookSubscription // ignore: cast_nullable_to_non_nullable
              as bool?,
      lang: freezed == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of AppConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SplashConfigCopyWith<$Res>? get splashConfig {
    if (_value.splashConfig == null) {
      return null;
    }

    return $SplashConfigCopyWith<$Res>(_value.splashConfig!, (value) {
      return _then(_value.copyWith(splashConfig: value) as $Val);
    });
  }

  /// Create a copy of AppConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoverConfigCopyWith<$Res>? get coverConfig {
    if (_value.coverConfig == null) {
      return null;
    }

    return $CoverConfigCopyWith<$Res>(_value.coverConfig!, (value) {
      return _then(_value.copyWith(coverConfig: value) as $Val);
    });
  }

  /// Create a copy of AppConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AndroidVersionInfoCopyWith<$Res>? get androidVersionInfo {
    if (_value.androidVersionInfo == null) {
      return null;
    }

    return $AndroidVersionInfoCopyWith<$Res>(_value.androidVersionInfo!,
        (value) {
      return _then(_value.copyWith(androidVersionInfo: value) as $Val);
    });
  }

  /// Create a copy of AppConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IOSVersionInfoCopyWith<$Res>? get iosVersionInfo {
    if (_value.iosVersionInfo == null) {
      return null;
    }

    return $IOSVersionInfoCopyWith<$Res>(_value.iosVersionInfo!, (value) {
      return _then(_value.copyWith(iosVersionInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppConfigImplCopyWith<$Res>
    implements $AppConfigCopyWith<$Res> {
  factory _$$AppConfigImplCopyWith(
          _$AppConfigImpl value, $Res Function(_$AppConfigImpl) then) =
      __$$AppConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'splash') SplashConfig? splashConfig,
      @JsonKey(name: 'cover') CoverConfig? coverConfig,
      @JsonKey(name: 'vipType') String? vipType,
      @JsonKey(name: 'langOption') Map<String, String>? langOption,
      @JsonKey(name: 'derection') String? derection,
      @JsonKey(name: 'android') AndroidVersionInfo? androidVersionInfo,
      @JsonKey(name: 'iOS') IOSVersionInfo? iosVersionInfo,
      @JsonKey(name: 'langs') List<Map<String, dynamic>>? languageList,
      @JsonKey(name: 'dialogue') List<Map<String, dynamic>>? openingDialog,
      @JsonKey(name: 'logins') Map<String, dynamic>? loginDialog,
      @JsonKey(name: 'updateForced') bool? updateForced,
      @JsonKey(name: 'encoding') String? encoding,
      @JsonKey(name: 'recommendMaxCount') int? recommendMaxCount,
      @JsonKey(name: 'timeMinutes') int? timeMinutes,
      @JsonKey(name: 'timeEnable') bool? timeEnable,
      @JsonKey(name: 'isFacebookLoginEnabled') bool? isFacebookLoginEnabled,
      @JsonKey(name: 'isHideBookSubscription') bool? isHideBookSubscription,
      @JsonKey(name: 'lang') String? lang});

  @override
  $SplashConfigCopyWith<$Res>? get splashConfig;
  @override
  $CoverConfigCopyWith<$Res>? get coverConfig;
  @override
  $AndroidVersionInfoCopyWith<$Res>? get androidVersionInfo;
  @override
  $IOSVersionInfoCopyWith<$Res>? get iosVersionInfo;
}

/// @nodoc
class __$$AppConfigImplCopyWithImpl<$Res>
    extends _$AppConfigCopyWithImpl<$Res, _$AppConfigImpl>
    implements _$$AppConfigImplCopyWith<$Res> {
  __$$AppConfigImplCopyWithImpl(
      _$AppConfigImpl _value, $Res Function(_$AppConfigImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? splashConfig = freezed,
    Object? coverConfig = freezed,
    Object? vipType = freezed,
    Object? langOption = freezed,
    Object? derection = freezed,
    Object? androidVersionInfo = freezed,
    Object? iosVersionInfo = freezed,
    Object? languageList = freezed,
    Object? openingDialog = freezed,
    Object? loginDialog = freezed,
    Object? updateForced = freezed,
    Object? encoding = freezed,
    Object? recommendMaxCount = freezed,
    Object? timeMinutes = freezed,
    Object? timeEnable = freezed,
    Object? isFacebookLoginEnabled = freezed,
    Object? isHideBookSubscription = freezed,
    Object? lang = freezed,
  }) {
    return _then(_$AppConfigImpl(
      splashConfig: freezed == splashConfig
          ? _value.splashConfig
          : splashConfig // ignore: cast_nullable_to_non_nullable
              as SplashConfig?,
      coverConfig: freezed == coverConfig
          ? _value.coverConfig
          : coverConfig // ignore: cast_nullable_to_non_nullable
              as CoverConfig?,
      vipType: freezed == vipType
          ? _value.vipType
          : vipType // ignore: cast_nullable_to_non_nullable
              as String?,
      langOption: freezed == langOption
          ? _value._langOption
          : langOption // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      derection: freezed == derection
          ? _value.derection
          : derection // ignore: cast_nullable_to_non_nullable
              as String?,
      androidVersionInfo: freezed == androidVersionInfo
          ? _value.androidVersionInfo
          : androidVersionInfo // ignore: cast_nullable_to_non_nullable
              as AndroidVersionInfo?,
      iosVersionInfo: freezed == iosVersionInfo
          ? _value.iosVersionInfo
          : iosVersionInfo // ignore: cast_nullable_to_non_nullable
              as IOSVersionInfo?,
      languageList: freezed == languageList
          ? _value._languageList
          : languageList // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
      openingDialog: freezed == openingDialog
          ? _value._openingDialog
          : openingDialog // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
      loginDialog: freezed == loginDialog
          ? _value._loginDialog
          : loginDialog // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      updateForced: freezed == updateForced
          ? _value.updateForced
          : updateForced // ignore: cast_nullable_to_non_nullable
              as bool?,
      encoding: freezed == encoding
          ? _value.encoding
          : encoding // ignore: cast_nullable_to_non_nullable
              as String?,
      recommendMaxCount: freezed == recommendMaxCount
          ? _value.recommendMaxCount
          : recommendMaxCount // ignore: cast_nullable_to_non_nullable
              as int?,
      timeMinutes: freezed == timeMinutes
          ? _value.timeMinutes
          : timeMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      timeEnable: freezed == timeEnable
          ? _value.timeEnable
          : timeEnable // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFacebookLoginEnabled: freezed == isFacebookLoginEnabled
          ? _value.isFacebookLoginEnabled
          : isFacebookLoginEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      isHideBookSubscription: freezed == isHideBookSubscription
          ? _value.isHideBookSubscription
          : isHideBookSubscription // ignore: cast_nullable_to_non_nullable
              as bool?,
      lang: freezed == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$AppConfigImpl extends _AppConfig {
  _$AppConfigImpl(
      {@JsonKey(name: 'splash') this.splashConfig,
      @JsonKey(name: 'cover') this.coverConfig,
      @JsonKey(name: 'vipType') this.vipType,
      @JsonKey(name: 'langOption') final Map<String, String>? langOption,
      @JsonKey(name: 'derection') this.derection,
      @JsonKey(name: 'android') this.androidVersionInfo,
      @JsonKey(name: 'iOS') this.iosVersionInfo,
      @JsonKey(name: 'langs') final List<Map<String, dynamic>>? languageList,
      @JsonKey(name: 'dialogue')
      final List<Map<String, dynamic>>? openingDialog,
      @JsonKey(name: 'logins') final Map<String, dynamic>? loginDialog,
      @JsonKey(name: 'updateForced') this.updateForced,
      @JsonKey(name: 'encoding') this.encoding,
      @JsonKey(name: 'recommendMaxCount') this.recommendMaxCount,
      @JsonKey(name: 'timeMinutes') this.timeMinutes,
      @JsonKey(name: 'timeEnable') this.timeEnable,
      @JsonKey(name: 'isFacebookLoginEnabled') this.isFacebookLoginEnabled,
      @JsonKey(name: 'isHideBookSubscription') this.isHideBookSubscription,
      @JsonKey(name: 'lang') this.lang})
      : _langOption = langOption,
        _languageList = languageList,
        _openingDialog = openingDialog,
        _loginDialog = loginDialog,
        super._();

  factory _$AppConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppConfigImplFromJson(json);

  @override
  @JsonKey(name: 'splash')
  final SplashConfig? splashConfig;
  @override
  @JsonKey(name: 'cover')
  final CoverConfig? coverConfig;
  @override
  @JsonKey(name: 'vipType')
  final String? vipType;
  final Map<String, String>? _langOption;
  @override
  @JsonKey(name: 'langOption')
  Map<String, String>? get langOption {
    final value = _langOption;
    if (value == null) return null;
    if (_langOption is EqualUnmodifiableMapView) return _langOption;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'derection')
  final String? derection;
  @override
  @JsonKey(name: 'android')
  final AndroidVersionInfo? androidVersionInfo;
  @override
  @JsonKey(name: 'iOS')
  final IOSVersionInfo? iosVersionInfo;
// @JsonKey(name: 'ossUrl') String? ossUrl,
  final List<Map<String, dynamic>>? _languageList;
// @JsonKey(name: 'ossUrl') String? ossUrl,
  @override
  @JsonKey(name: 'langs')
  List<Map<String, dynamic>>? get languageList {
    final value = _languageList;
    if (value == null) return null;
    if (_languageList is EqualUnmodifiableListView) return _languageList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Map<String, dynamic>>? _openingDialog;
  @override
  @JsonKey(name: 'dialogue')
  List<Map<String, dynamic>>? get openingDialog {
    final value = _openingDialog;
    if (value == null) return null;
    if (_openingDialog is EqualUnmodifiableListView) return _openingDialog;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, dynamic>? _loginDialog;
  @override
  @JsonKey(name: 'logins')
  Map<String, dynamic>? get loginDialog {
    final value = _loginDialog;
    if (value == null) return null;
    if (_loginDialog is EqualUnmodifiableMapView) return _loginDialog;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'updateForced')
  final bool? updateForced;
  @override
  @JsonKey(name: 'encoding')
  final String? encoding;
  @override
  @JsonKey(name: 'recommendMaxCount')
  final int? recommendMaxCount;
  @override
  @JsonKey(name: 'timeMinutes')
  final int? timeMinutes;
  @override
  @JsonKey(name: 'timeEnable')
  final bool? timeEnable;
  @override
  @JsonKey(name: 'isFacebookLoginEnabled')
  final bool? isFacebookLoginEnabled;
  @override
  @JsonKey(name: 'isHideBookSubscription')
  final bool? isHideBookSubscription;
  @override
  @JsonKey(name: 'lang')
  final String? lang;

  @override
  String toString() {
    return 'AppConfig(splashConfig: $splashConfig, coverConfig: $coverConfig, vipType: $vipType, langOption: $langOption, derection: $derection, androidVersionInfo: $androidVersionInfo, iosVersionInfo: $iosVersionInfo, languageList: $languageList, openingDialog: $openingDialog, loginDialog: $loginDialog, updateForced: $updateForced, encoding: $encoding, recommendMaxCount: $recommendMaxCount, timeMinutes: $timeMinutes, timeEnable: $timeEnable, isFacebookLoginEnabled: $isFacebookLoginEnabled, isHideBookSubscription: $isHideBookSubscription, lang: $lang)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppConfigImpl &&
            (identical(other.splashConfig, splashConfig) ||
                other.splashConfig == splashConfig) &&
            (identical(other.coverConfig, coverConfig) ||
                other.coverConfig == coverConfig) &&
            (identical(other.vipType, vipType) || other.vipType == vipType) &&
            const DeepCollectionEquality()
                .equals(other._langOption, _langOption) &&
            (identical(other.derection, derection) ||
                other.derection == derection) &&
            (identical(other.androidVersionInfo, androidVersionInfo) ||
                other.androidVersionInfo == androidVersionInfo) &&
            (identical(other.iosVersionInfo, iosVersionInfo) ||
                other.iosVersionInfo == iosVersionInfo) &&
            const DeepCollectionEquality()
                .equals(other._languageList, _languageList) &&
            const DeepCollectionEquality()
                .equals(other._openingDialog, _openingDialog) &&
            const DeepCollectionEquality()
                .equals(other._loginDialog, _loginDialog) &&
            (identical(other.updateForced, updateForced) ||
                other.updateForced == updateForced) &&
            (identical(other.encoding, encoding) ||
                other.encoding == encoding) &&
            (identical(other.recommendMaxCount, recommendMaxCount) ||
                other.recommendMaxCount == recommendMaxCount) &&
            (identical(other.timeMinutes, timeMinutes) ||
                other.timeMinutes == timeMinutes) &&
            (identical(other.timeEnable, timeEnable) ||
                other.timeEnable == timeEnable) &&
            (identical(other.isFacebookLoginEnabled, isFacebookLoginEnabled) ||
                other.isFacebookLoginEnabled == isFacebookLoginEnabled) &&
            (identical(other.isHideBookSubscription, isHideBookSubscription) ||
                other.isHideBookSubscription == isHideBookSubscription) &&
            (identical(other.lang, lang) || other.lang == lang));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      splashConfig,
      coverConfig,
      vipType,
      const DeepCollectionEquality().hash(_langOption),
      derection,
      androidVersionInfo,
      iosVersionInfo,
      const DeepCollectionEquality().hash(_languageList),
      const DeepCollectionEquality().hash(_openingDialog),
      const DeepCollectionEquality().hash(_loginDialog),
      updateForced,
      encoding,
      recommendMaxCount,
      timeMinutes,
      timeEnable,
      isFacebookLoginEnabled,
      isHideBookSubscription,
      lang);

  /// Create a copy of AppConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppConfigImplCopyWith<_$AppConfigImpl> get copyWith =>
      __$$AppConfigImplCopyWithImpl<_$AppConfigImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppConfigImplToJson(
      this,
    );
  }
}

abstract class _AppConfig extends AppConfig {
  factory _AppConfig(
      {@JsonKey(name: 'splash') final SplashConfig? splashConfig,
      @JsonKey(name: 'cover') final CoverConfig? coverConfig,
      @JsonKey(name: 'vipType') final String? vipType,
      @JsonKey(name: 'langOption') final Map<String, String>? langOption,
      @JsonKey(name: 'derection') final String? derection,
      @JsonKey(name: 'android') final AndroidVersionInfo? androidVersionInfo,
      @JsonKey(name: 'iOS') final IOSVersionInfo? iosVersionInfo,
      @JsonKey(name: 'langs') final List<Map<String, dynamic>>? languageList,
      @JsonKey(name: 'dialogue')
      final List<Map<String, dynamic>>? openingDialog,
      @JsonKey(name: 'logins') final Map<String, dynamic>? loginDialog,
      @JsonKey(name: 'updateForced') final bool? updateForced,
      @JsonKey(name: 'encoding') final String? encoding,
      @JsonKey(name: 'recommendMaxCount') final int? recommendMaxCount,
      @JsonKey(name: 'timeMinutes') final int? timeMinutes,
      @JsonKey(name: 'timeEnable') final bool? timeEnable,
      @JsonKey(name: 'isFacebookLoginEnabled')
      final bool? isFacebookLoginEnabled,
      @JsonKey(name: 'isHideBookSubscription')
      final bool? isHideBookSubscription,
      @JsonKey(name: 'lang') final String? lang}) = _$AppConfigImpl;
  _AppConfig._() : super._();

  factory _AppConfig.fromJson(Map<String, dynamic> json) =
      _$AppConfigImpl.fromJson;

  @override
  @JsonKey(name: 'splash')
  SplashConfig? get splashConfig;
  @override
  @JsonKey(name: 'cover')
  CoverConfig? get coverConfig;
  @override
  @JsonKey(name: 'vipType')
  String? get vipType;
  @override
  @JsonKey(name: 'langOption')
  Map<String, String>? get langOption;
  @override
  @JsonKey(name: 'derection')
  String? get derection;
  @override
  @JsonKey(name: 'android')
  AndroidVersionInfo? get androidVersionInfo;
  @override
  @JsonKey(name: 'iOS')
  IOSVersionInfo?
      get iosVersionInfo; // @JsonKey(name: 'ossUrl') String? ossUrl,
  @override
  @JsonKey(name: 'langs')
  List<Map<String, dynamic>>? get languageList;
  @override
  @JsonKey(name: 'dialogue')
  List<Map<String, dynamic>>? get openingDialog;
  @override
  @JsonKey(name: 'logins')
  Map<String, dynamic>? get loginDialog;
  @override
  @JsonKey(name: 'updateForced')
  bool? get updateForced;
  @override
  @JsonKey(name: 'encoding')
  String? get encoding;
  @override
  @JsonKey(name: 'recommendMaxCount')
  int? get recommendMaxCount;
  @override
  @JsonKey(name: 'timeMinutes')
  int? get timeMinutes;
  @override
  @JsonKey(name: 'timeEnable')
  bool? get timeEnable;
  @override
  @JsonKey(name: 'isFacebookLoginEnabled')
  bool? get isFacebookLoginEnabled;
  @override
  @JsonKey(name: 'isHideBookSubscription')
  bool? get isHideBookSubscription;
  @override
  @JsonKey(name: 'lang')
  String? get lang;

  /// Create a copy of AppConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppConfigImplCopyWith<_$AppConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
