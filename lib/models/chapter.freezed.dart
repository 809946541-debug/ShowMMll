// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chapter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Chapter _$ChapterFromJson(Map<String, dynamic> json) {
  return _Chapter.fromJson(json);
}

/// @nodoc
mixin _$Chapter {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'bookId')
  String? get bookId => throw _privateConstructorUsedError;
  @JsonKey(name: 'no')
  int? get no => throw _privateConstructorUsedError;
  @JsonKey(name: 'unLock')
  bool? get isUnlocked => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'contents')
  List<String>? get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'unLockCoins')
  int? get coinPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'useableCoin')
  int? get useableCoin => throw _privateConstructorUsedError;
  @JsonKey(name: 'showFavourite')
  bool? get showFavourite => throw _privateConstructorUsedError;
  @JsonKey(name: 'readPower')
  bool? get readPower => throw _privateConstructorUsedError;

  /// Serializes this Chapter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Chapter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChapterCopyWith<Chapter> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapterCopyWith<$Res> {
  factory $ChapterCopyWith(Chapter value, $Res Function(Chapter) then) =
      _$ChapterCopyWithImpl<$Res, Chapter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'bookId') String? bookId,
      @JsonKey(name: 'no') int? no,
      @JsonKey(name: 'unLock') bool? isUnlocked,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'contents') List<String>? content,
      @JsonKey(name: 'unLockCoins') int? coinPrice,
      @JsonKey(name: 'useableCoin') int? useableCoin,
      @JsonKey(name: 'showFavourite') bool? showFavourite,
      @JsonKey(name: 'readPower') bool? readPower});
}

/// @nodoc
class _$ChapterCopyWithImpl<$Res, $Val extends Chapter>
    implements $ChapterCopyWith<$Res> {
  _$ChapterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Chapter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? bookId = freezed,
    Object? no = freezed,
    Object? isUnlocked = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? coinPrice = freezed,
    Object? useableCoin = freezed,
    Object? showFavourite = freezed,
    Object? readPower = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      bookId: freezed == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String?,
      no: freezed == no
          ? _value.no
          : no // ignore: cast_nullable_to_non_nullable
              as int?,
      isUnlocked: freezed == isUnlocked
          ? _value.isUnlocked
          : isUnlocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      coinPrice: freezed == coinPrice
          ? _value.coinPrice
          : coinPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      useableCoin: freezed == useableCoin
          ? _value.useableCoin
          : useableCoin // ignore: cast_nullable_to_non_nullable
              as int?,
      showFavourite: freezed == showFavourite
          ? _value.showFavourite
          : showFavourite // ignore: cast_nullable_to_non_nullable
              as bool?,
      readPower: freezed == readPower
          ? _value.readPower
          : readPower // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChapterImplCopyWith<$Res> implements $ChapterCopyWith<$Res> {
  factory _$$ChapterImplCopyWith(
          _$ChapterImpl value, $Res Function(_$ChapterImpl) then) =
      __$$ChapterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'bookId') String? bookId,
      @JsonKey(name: 'no') int? no,
      @JsonKey(name: 'unLock') bool? isUnlocked,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'contents') List<String>? content,
      @JsonKey(name: 'unLockCoins') int? coinPrice,
      @JsonKey(name: 'useableCoin') int? useableCoin,
      @JsonKey(name: 'showFavourite') bool? showFavourite,
      @JsonKey(name: 'readPower') bool? readPower});
}

/// @nodoc
class __$$ChapterImplCopyWithImpl<$Res>
    extends _$ChapterCopyWithImpl<$Res, _$ChapterImpl>
    implements _$$ChapterImplCopyWith<$Res> {
  __$$ChapterImplCopyWithImpl(
      _$ChapterImpl _value, $Res Function(_$ChapterImpl) _then)
      : super(_value, _then);

  /// Create a copy of Chapter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? bookId = freezed,
    Object? no = freezed,
    Object? isUnlocked = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? coinPrice = freezed,
    Object? useableCoin = freezed,
    Object? showFavourite = freezed,
    Object? readPower = freezed,
  }) {
    return _then(_$ChapterImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      bookId: freezed == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String?,
      no: freezed == no
          ? _value.no
          : no // ignore: cast_nullable_to_non_nullable
              as int?,
      isUnlocked: freezed == isUnlocked
          ? _value.isUnlocked
          : isUnlocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      coinPrice: freezed == coinPrice
          ? _value.coinPrice
          : coinPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      useableCoin: freezed == useableCoin
          ? _value.useableCoin
          : useableCoin // ignore: cast_nullable_to_non_nullable
              as int?,
      showFavourite: freezed == showFavourite
          ? _value.showFavourite
          : showFavourite // ignore: cast_nullable_to_non_nullable
              as bool?,
      readPower: freezed == readPower
          ? _value.readPower
          : readPower // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$ChapterImpl extends _Chapter {
  _$ChapterImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'bookId') this.bookId,
      @JsonKey(name: 'no') this.no,
      @JsonKey(name: 'unLock') this.isUnlocked,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'contents') final List<String>? content,
      @JsonKey(name: 'unLockCoins') this.coinPrice,
      @JsonKey(name: 'useableCoin') this.useableCoin,
      @JsonKey(name: 'showFavourite') this.showFavourite,
      @JsonKey(name: 'readPower') this.readPower})
      : _content = content,
        super._();

  factory _$ChapterImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChapterImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'bookId')
  final String? bookId;
  @override
  @JsonKey(name: 'no')
  final int? no;
  @override
  @JsonKey(name: 'unLock')
  final bool? isUnlocked;
  @override
  @JsonKey(name: 'title')
  final String? title;
  final List<String>? _content;
  @override
  @JsonKey(name: 'contents')
  List<String>? get content {
    final value = _content;
    if (value == null) return null;
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'unLockCoins')
  final int? coinPrice;
  @override
  @JsonKey(name: 'useableCoin')
  final int? useableCoin;
  @override
  @JsonKey(name: 'showFavourite')
  final bool? showFavourite;
  @override
  @JsonKey(name: 'readPower')
  final bool? readPower;

  @override
  String toString() {
    return 'Chapter(id: $id, bookId: $bookId, no: $no, isUnlocked: $isUnlocked, title: $title, content: $content, coinPrice: $coinPrice, useableCoin: $useableCoin, showFavourite: $showFavourite, readPower: $readPower)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChapterImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.no, no) || other.no == no) &&
            (identical(other.isUnlocked, isUnlocked) ||
                other.isUnlocked == isUnlocked) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            (identical(other.coinPrice, coinPrice) ||
                other.coinPrice == coinPrice) &&
            (identical(other.useableCoin, useableCoin) ||
                other.useableCoin == useableCoin) &&
            (identical(other.showFavourite, showFavourite) ||
                other.showFavourite == showFavourite) &&
            (identical(other.readPower, readPower) ||
                other.readPower == readPower));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      bookId,
      no,
      isUnlocked,
      title,
      const DeepCollectionEquality().hash(_content),
      coinPrice,
      useableCoin,
      showFavourite,
      readPower);

  /// Create a copy of Chapter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChapterImplCopyWith<_$ChapterImpl> get copyWith =>
      __$$ChapterImplCopyWithImpl<_$ChapterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChapterImplToJson(
      this,
    );
  }
}

abstract class _Chapter extends Chapter {
  factory _Chapter(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'bookId') final String? bookId,
      @JsonKey(name: 'no') final int? no,
      @JsonKey(name: 'unLock') final bool? isUnlocked,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'contents') final List<String>? content,
      @JsonKey(name: 'unLockCoins') final int? coinPrice,
      @JsonKey(name: 'useableCoin') final int? useableCoin,
      @JsonKey(name: 'showFavourite') final bool? showFavourite,
      @JsonKey(name: 'readPower') final bool? readPower}) = _$ChapterImpl;
  _Chapter._() : super._();

  factory _Chapter.fromJson(Map<String, dynamic> json) = _$ChapterImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'bookId')
  String? get bookId;
  @override
  @JsonKey(name: 'no')
  int? get no;
  @override
  @JsonKey(name: 'unLock')
  bool? get isUnlocked;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'contents')
  List<String>? get content;
  @override
  @JsonKey(name: 'unLockCoins')
  int? get coinPrice;
  @override
  @JsonKey(name: 'useableCoin')
  int? get useableCoin;
  @override
  @JsonKey(name: 'showFavourite')
  bool? get showFavourite;
  @override
  @JsonKey(name: 'readPower')
  bool? get readPower;

  /// Create a copy of Chapter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChapterImplCopyWith<_$ChapterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
