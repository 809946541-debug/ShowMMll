// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'novel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Novel _$NovelFromJson(Map<String, dynamic> json) {
  return _Novel.fromJson(json);
}

/// @nodoc
mixin _$Novel {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'cover')
  String? get cover => throw _privateConstructorUsedError;
  @JsonKey(name: 'coverThumb')
  String? get coverThumb => throw _privateConstructorUsedError;
  @JsonKey(name: 'summary')
  String? get summary => throw _privateConstructorUsedError;
  @JsonKey(name: 'summaryShort')
  String? get summaryShort => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'favouriteCount')
  int? get favoriteCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'viewCount')
  int? get viewCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'wordCount')
  int? get wordCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'tags')
  List<String>? get tagList => throw _privateConstructorUsedError;
  @JsonKey(name: 'isFavourite')
  bool? get isFavorite => throw _privateConstructorUsedError;
  @JsonKey(name: 'unLockType')
  int? get unLockType =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'author') String? author,
  @JsonKey(name: 'catalogId')
  String? get catalogId => throw _privateConstructorUsedError;
  @JsonKey(name: 'catalogName')
  String? get catalogName => throw _privateConstructorUsedError;
  @JsonKey(name: 'isMonthlySubscription')
  bool? get isMonthlySubscription =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'authorImage') String? authorImage,
  @JsonKey(name: 'chapterMaxNo')
  int? get chapterCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'freeCount')
  int? get freeCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'discountOff')
  int? get discountOff => throw _privateConstructorUsedError;
  @JsonKey(name: 'freeTimeText')
  String? get freeTimeText => throw _privateConstructorUsedError;
  @JsonKey(name: 'discountTimeText')
  String? get discountTimeText => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  int? get statusValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'statusText')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'chapterReadNo')
  int? get lastReadChapterNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'hot')
  int? get hotSort => throw _privateConstructorUsedError;
  @JsonKey(name: 'urgeMessage')
  String? get chapterUpdateMessage => throw _privateConstructorUsedError;
  @JsonKey(name: 'coverUrl')
  String? get coverUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  String? get category => throw _privateConstructorUsedError;

  /// Serializes this Novel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Novel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NovelCopyWith<Novel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NovelCopyWith<$Res> {
  factory $NovelCopyWith(Novel value, $Res Function(Novel) then) =
      _$NovelCopyWithImpl<$Res, Novel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'cover') String? cover,
      @JsonKey(name: 'coverThumb') String? coverThumb,
      @JsonKey(name: 'summary') String? summary,
      @JsonKey(name: 'summaryShort') String? summaryShort,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'favouriteCount') int? favoriteCount,
      @JsonKey(name: 'viewCount') int? viewCount,
      @JsonKey(name: 'wordCount') int? wordCount,
      @JsonKey(name: 'tags') List<String>? tagList,
      @JsonKey(name: 'isFavourite') bool? isFavorite,
      @JsonKey(name: 'unLockType') int? unLockType,
      @JsonKey(name: 'catalogId') String? catalogId,
      @JsonKey(name: 'catalogName') String? catalogName,
      @JsonKey(name: 'isMonthlySubscription') bool? isMonthlySubscription,
      @JsonKey(name: 'chapterMaxNo') int? chapterCount,
      @JsonKey(name: 'freeCount') int? freeCount,
      @JsonKey(name: 'discountOff') int? discountOff,
      @JsonKey(name: 'freeTimeText') String? freeTimeText,
      @JsonKey(name: 'discountTimeText') String? discountTimeText,
      @JsonKey(name: 'status') int? statusValue,
      @JsonKey(name: 'statusText') String? status,
      @JsonKey(name: 'chapterReadNo') int? lastReadChapterNo,
      @JsonKey(name: 'hot') int? hotSort,
      @JsonKey(name: 'urgeMessage') String? chapterUpdateMessage,
      @JsonKey(name: 'coverUrl') String? coverUrl,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'category') String? category});
}

/// @nodoc
class _$NovelCopyWithImpl<$Res, $Val extends Novel>
    implements $NovelCopyWith<$Res> {
  _$NovelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Novel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? cover = freezed,
    Object? coverThumb = freezed,
    Object? summary = freezed,
    Object? summaryShort = freezed,
    Object? title = freezed,
    Object? favoriteCount = freezed,
    Object? viewCount = freezed,
    Object? wordCount = freezed,
    Object? tagList = freezed,
    Object? isFavorite = freezed,
    Object? unLockType = freezed,
    Object? catalogId = freezed,
    Object? catalogName = freezed,
    Object? isMonthlySubscription = freezed,
    Object? chapterCount = freezed,
    Object? freeCount = freezed,
    Object? discountOff = freezed,
    Object? freeTimeText = freezed,
    Object? discountTimeText = freezed,
    Object? statusValue = freezed,
    Object? status = freezed,
    Object? lastReadChapterNo = freezed,
    Object? hotSort = freezed,
    Object? chapterUpdateMessage = freezed,
    Object? coverUrl = freezed,
    Object? description = freezed,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      coverThumb: freezed == coverThumb
          ? _value.coverThumb
          : coverThumb // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      summaryShort: freezed == summaryShort
          ? _value.summaryShort
          : summaryShort // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      favoriteCount: freezed == favoriteCount
          ? _value.favoriteCount
          : favoriteCount // ignore: cast_nullable_to_non_nullable
              as int?,
      viewCount: freezed == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int?,
      wordCount: freezed == wordCount
          ? _value.wordCount
          : wordCount // ignore: cast_nullable_to_non_nullable
              as int?,
      tagList: freezed == tagList
          ? _value.tagList
          : tagList // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
      unLockType: freezed == unLockType
          ? _value.unLockType
          : unLockType // ignore: cast_nullable_to_non_nullable
              as int?,
      catalogId: freezed == catalogId
          ? _value.catalogId
          : catalogId // ignore: cast_nullable_to_non_nullable
              as String?,
      catalogName: freezed == catalogName
          ? _value.catalogName
          : catalogName // ignore: cast_nullable_to_non_nullable
              as String?,
      isMonthlySubscription: freezed == isMonthlySubscription
          ? _value.isMonthlySubscription
          : isMonthlySubscription // ignore: cast_nullable_to_non_nullable
              as bool?,
      chapterCount: freezed == chapterCount
          ? _value.chapterCount
          : chapterCount // ignore: cast_nullable_to_non_nullable
              as int?,
      freeCount: freezed == freeCount
          ? _value.freeCount
          : freeCount // ignore: cast_nullable_to_non_nullable
              as int?,
      discountOff: freezed == discountOff
          ? _value.discountOff
          : discountOff // ignore: cast_nullable_to_non_nullable
              as int?,
      freeTimeText: freezed == freeTimeText
          ? _value.freeTimeText
          : freeTimeText // ignore: cast_nullable_to_non_nullable
              as String?,
      discountTimeText: freezed == discountTimeText
          ? _value.discountTimeText
          : discountTimeText // ignore: cast_nullable_to_non_nullable
              as String?,
      statusValue: freezed == statusValue
          ? _value.statusValue
          : statusValue // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      lastReadChapterNo: freezed == lastReadChapterNo
          ? _value.lastReadChapterNo
          : lastReadChapterNo // ignore: cast_nullable_to_non_nullable
              as int?,
      hotSort: freezed == hotSort
          ? _value.hotSort
          : hotSort // ignore: cast_nullable_to_non_nullable
              as int?,
      chapterUpdateMessage: freezed == chapterUpdateMessage
          ? _value.chapterUpdateMessage
          : chapterUpdateMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      coverUrl: freezed == coverUrl
          ? _value.coverUrl
          : coverUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NovelImplCopyWith<$Res> implements $NovelCopyWith<$Res> {
  factory _$$NovelImplCopyWith(
          _$NovelImpl value, $Res Function(_$NovelImpl) then) =
      __$$NovelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'cover') String? cover,
      @JsonKey(name: 'coverThumb') String? coverThumb,
      @JsonKey(name: 'summary') String? summary,
      @JsonKey(name: 'summaryShort') String? summaryShort,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'favouriteCount') int? favoriteCount,
      @JsonKey(name: 'viewCount') int? viewCount,
      @JsonKey(name: 'wordCount') int? wordCount,
      @JsonKey(name: 'tags') List<String>? tagList,
      @JsonKey(name: 'isFavourite') bool? isFavorite,
      @JsonKey(name: 'unLockType') int? unLockType,
      @JsonKey(name: 'catalogId') String? catalogId,
      @JsonKey(name: 'catalogName') String? catalogName,
      @JsonKey(name: 'isMonthlySubscription') bool? isMonthlySubscription,
      @JsonKey(name: 'chapterMaxNo') int? chapterCount,
      @JsonKey(name: 'freeCount') int? freeCount,
      @JsonKey(name: 'discountOff') int? discountOff,
      @JsonKey(name: 'freeTimeText') String? freeTimeText,
      @JsonKey(name: 'discountTimeText') String? discountTimeText,
      @JsonKey(name: 'status') int? statusValue,
      @JsonKey(name: 'statusText') String? status,
      @JsonKey(name: 'chapterReadNo') int? lastReadChapterNo,
      @JsonKey(name: 'hot') int? hotSort,
      @JsonKey(name: 'urgeMessage') String? chapterUpdateMessage,
      @JsonKey(name: 'coverUrl') String? coverUrl,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'category') String? category});
}

/// @nodoc
class __$$NovelImplCopyWithImpl<$Res>
    extends _$NovelCopyWithImpl<$Res, _$NovelImpl>
    implements _$$NovelImplCopyWith<$Res> {
  __$$NovelImplCopyWithImpl(
      _$NovelImpl _value, $Res Function(_$NovelImpl) _then)
      : super(_value, _then);

  /// Create a copy of Novel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? cover = freezed,
    Object? coverThumb = freezed,
    Object? summary = freezed,
    Object? summaryShort = freezed,
    Object? title = freezed,
    Object? favoriteCount = freezed,
    Object? viewCount = freezed,
    Object? wordCount = freezed,
    Object? tagList = freezed,
    Object? isFavorite = freezed,
    Object? unLockType = freezed,
    Object? catalogId = freezed,
    Object? catalogName = freezed,
    Object? isMonthlySubscription = freezed,
    Object? chapterCount = freezed,
    Object? freeCount = freezed,
    Object? discountOff = freezed,
    Object? freeTimeText = freezed,
    Object? discountTimeText = freezed,
    Object? statusValue = freezed,
    Object? status = freezed,
    Object? lastReadChapterNo = freezed,
    Object? hotSort = freezed,
    Object? chapterUpdateMessage = freezed,
    Object? coverUrl = freezed,
    Object? description = freezed,
    Object? category = freezed,
  }) {
    return _then(_$NovelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      coverThumb: freezed == coverThumb
          ? _value.coverThumb
          : coverThumb // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      summaryShort: freezed == summaryShort
          ? _value.summaryShort
          : summaryShort // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      favoriteCount: freezed == favoriteCount
          ? _value.favoriteCount
          : favoriteCount // ignore: cast_nullable_to_non_nullable
              as int?,
      viewCount: freezed == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int?,
      wordCount: freezed == wordCount
          ? _value.wordCount
          : wordCount // ignore: cast_nullable_to_non_nullable
              as int?,
      tagList: freezed == tagList
          ? _value._tagList
          : tagList // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
      unLockType: freezed == unLockType
          ? _value.unLockType
          : unLockType // ignore: cast_nullable_to_non_nullable
              as int?,
      catalogId: freezed == catalogId
          ? _value.catalogId
          : catalogId // ignore: cast_nullable_to_non_nullable
              as String?,
      catalogName: freezed == catalogName
          ? _value.catalogName
          : catalogName // ignore: cast_nullable_to_non_nullable
              as String?,
      isMonthlySubscription: freezed == isMonthlySubscription
          ? _value.isMonthlySubscription
          : isMonthlySubscription // ignore: cast_nullable_to_non_nullable
              as bool?,
      chapterCount: freezed == chapterCount
          ? _value.chapterCount
          : chapterCount // ignore: cast_nullable_to_non_nullable
              as int?,
      freeCount: freezed == freeCount
          ? _value.freeCount
          : freeCount // ignore: cast_nullable_to_non_nullable
              as int?,
      discountOff: freezed == discountOff
          ? _value.discountOff
          : discountOff // ignore: cast_nullable_to_non_nullable
              as int?,
      freeTimeText: freezed == freeTimeText
          ? _value.freeTimeText
          : freeTimeText // ignore: cast_nullable_to_non_nullable
              as String?,
      discountTimeText: freezed == discountTimeText
          ? _value.discountTimeText
          : discountTimeText // ignore: cast_nullable_to_non_nullable
              as String?,
      statusValue: freezed == statusValue
          ? _value.statusValue
          : statusValue // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      lastReadChapterNo: freezed == lastReadChapterNo
          ? _value.lastReadChapterNo
          : lastReadChapterNo // ignore: cast_nullable_to_non_nullable
              as int?,
      hotSort: freezed == hotSort
          ? _value.hotSort
          : hotSort // ignore: cast_nullable_to_non_nullable
              as int?,
      chapterUpdateMessage: freezed == chapterUpdateMessage
          ? _value.chapterUpdateMessage
          : chapterUpdateMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      coverUrl: freezed == coverUrl
          ? _value.coverUrl
          : coverUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$NovelImpl implements _Novel {
  _$NovelImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'cover') this.cover,
      @JsonKey(name: 'coverThumb') this.coverThumb,
      @JsonKey(name: 'summary') this.summary,
      @JsonKey(name: 'summaryShort') this.summaryShort,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'favouriteCount') this.favoriteCount,
      @JsonKey(name: 'viewCount') this.viewCount,
      @JsonKey(name: 'wordCount') this.wordCount,
      @JsonKey(name: 'tags') final List<String>? tagList = const [],
      @JsonKey(name: 'isFavourite') this.isFavorite,
      @JsonKey(name: 'unLockType') this.unLockType,
      @JsonKey(name: 'catalogId') this.catalogId,
      @JsonKey(name: 'catalogName') this.catalogName,
      @JsonKey(name: 'isMonthlySubscription') this.isMonthlySubscription,
      @JsonKey(name: 'chapterMaxNo') this.chapterCount,
      @JsonKey(name: 'freeCount') this.freeCount,
      @JsonKey(name: 'discountOff') this.discountOff,
      @JsonKey(name: 'freeTimeText') this.freeTimeText,
      @JsonKey(name: 'discountTimeText') this.discountTimeText,
      @JsonKey(name: 'status') this.statusValue,
      @JsonKey(name: 'statusText') this.status,
      @JsonKey(name: 'chapterReadNo') this.lastReadChapterNo,
      @JsonKey(name: 'hot') this.hotSort,
      @JsonKey(name: 'urgeMessage') this.chapterUpdateMessage,
      @JsonKey(name: 'coverUrl') this.coverUrl,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'category') this.category})
      : _tagList = tagList;

  factory _$NovelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NovelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'cover')
  final String? cover;
  @override
  @JsonKey(name: 'coverThumb')
  final String? coverThumb;
  @override
  @JsonKey(name: 'summary')
  final String? summary;
  @override
  @JsonKey(name: 'summaryShort')
  final String? summaryShort;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'favouriteCount')
  final int? favoriteCount;
  @override
  @JsonKey(name: 'viewCount')
  final int? viewCount;
  @override
  @JsonKey(name: 'wordCount')
  final int? wordCount;
  final List<String>? _tagList;
  @override
  @JsonKey(name: 'tags')
  List<String>? get tagList {
    final value = _tagList;
    if (value == null) return null;
    if (_tagList is EqualUnmodifiableListView) return _tagList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'isFavourite')
  final bool? isFavorite;
  @override
  @JsonKey(name: 'unLockType')
  final int? unLockType;
// @JsonKey(name: 'author') String? author,
  @override
  @JsonKey(name: 'catalogId')
  final String? catalogId;
  @override
  @JsonKey(name: 'catalogName')
  final String? catalogName;
  @override
  @JsonKey(name: 'isMonthlySubscription')
  final bool? isMonthlySubscription;
// @JsonKey(name: 'authorImage') String? authorImage,
  @override
  @JsonKey(name: 'chapterMaxNo')
  final int? chapterCount;
  @override
  @JsonKey(name: 'freeCount')
  final int? freeCount;
  @override
  @JsonKey(name: 'discountOff')
  final int? discountOff;
  @override
  @JsonKey(name: 'freeTimeText')
  final String? freeTimeText;
  @override
  @JsonKey(name: 'discountTimeText')
  final String? discountTimeText;
  @override
  @JsonKey(name: 'status')
  final int? statusValue;
  @override
  @JsonKey(name: 'statusText')
  final String? status;
  @override
  @JsonKey(name: 'chapterReadNo')
  final int? lastReadChapterNo;
  @override
  @JsonKey(name: 'hot')
  final int? hotSort;
  @override
  @JsonKey(name: 'urgeMessage')
  final String? chapterUpdateMessage;
  @override
  @JsonKey(name: 'coverUrl')
  final String? coverUrl;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'category')
  final String? category;

  @override
  String toString() {
    return 'Novel(id: $id, cover: $cover, coverThumb: $coverThumb, summary: $summary, summaryShort: $summaryShort, title: $title, favoriteCount: $favoriteCount, viewCount: $viewCount, wordCount: $wordCount, tagList: $tagList, isFavorite: $isFavorite, unLockType: $unLockType, catalogId: $catalogId, catalogName: $catalogName, isMonthlySubscription: $isMonthlySubscription, chapterCount: $chapterCount, freeCount: $freeCount, discountOff: $discountOff, freeTimeText: $freeTimeText, discountTimeText: $discountTimeText, statusValue: $statusValue, status: $status, lastReadChapterNo: $lastReadChapterNo, hotSort: $hotSort, chapterUpdateMessage: $chapterUpdateMessage, coverUrl: $coverUrl, description: $description, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NovelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.coverThumb, coverThumb) ||
                other.coverThumb == coverThumb) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.summaryShort, summaryShort) ||
                other.summaryShort == summaryShort) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.favoriteCount, favoriteCount) ||
                other.favoriteCount == favoriteCount) &&
            (identical(other.viewCount, viewCount) ||
                other.viewCount == viewCount) &&
            (identical(other.wordCount, wordCount) ||
                other.wordCount == wordCount) &&
            const DeepCollectionEquality().equals(other._tagList, _tagList) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.unLockType, unLockType) ||
                other.unLockType == unLockType) &&
            (identical(other.catalogId, catalogId) ||
                other.catalogId == catalogId) &&
            (identical(other.catalogName, catalogName) ||
                other.catalogName == catalogName) &&
            (identical(other.isMonthlySubscription, isMonthlySubscription) ||
                other.isMonthlySubscription == isMonthlySubscription) &&
            (identical(other.chapterCount, chapterCount) ||
                other.chapterCount == chapterCount) &&
            (identical(other.freeCount, freeCount) ||
                other.freeCount == freeCount) &&
            (identical(other.discountOff, discountOff) ||
                other.discountOff == discountOff) &&
            (identical(other.freeTimeText, freeTimeText) ||
                other.freeTimeText == freeTimeText) &&
            (identical(other.discountTimeText, discountTimeText) ||
                other.discountTimeText == discountTimeText) &&
            (identical(other.statusValue, statusValue) ||
                other.statusValue == statusValue) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.lastReadChapterNo, lastReadChapterNo) ||
                other.lastReadChapterNo == lastReadChapterNo) &&
            (identical(other.hotSort, hotSort) || other.hotSort == hotSort) &&
            (identical(other.chapterUpdateMessage, chapterUpdateMessage) ||
                other.chapterUpdateMessage == chapterUpdateMessage) &&
            (identical(other.coverUrl, coverUrl) ||
                other.coverUrl == coverUrl) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        cover,
        coverThumb,
        summary,
        summaryShort,
        title,
        favoriteCount,
        viewCount,
        wordCount,
        const DeepCollectionEquality().hash(_tagList),
        isFavorite,
        unLockType,
        catalogId,
        catalogName,
        isMonthlySubscription,
        chapterCount,
        freeCount,
        discountOff,
        freeTimeText,
        discountTimeText,
        statusValue,
        status,
        lastReadChapterNo,
        hotSort,
        chapterUpdateMessage,
        coverUrl,
        description,
        category
      ]);

  /// Create a copy of Novel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NovelImplCopyWith<_$NovelImpl> get copyWith =>
      __$$NovelImplCopyWithImpl<_$NovelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NovelImplToJson(
      this,
    );
  }
}

abstract class _Novel implements Novel {
  factory _Novel(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'cover') final String? cover,
      @JsonKey(name: 'coverThumb') final String? coverThumb,
      @JsonKey(name: 'summary') final String? summary,
      @JsonKey(name: 'summaryShort') final String? summaryShort,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'favouriteCount') final int? favoriteCount,
      @JsonKey(name: 'viewCount') final int? viewCount,
      @JsonKey(name: 'wordCount') final int? wordCount,
      @JsonKey(name: 'tags') final List<String>? tagList,
      @JsonKey(name: 'isFavourite') final bool? isFavorite,
      @JsonKey(name: 'unLockType') final int? unLockType,
      @JsonKey(name: 'catalogId') final String? catalogId,
      @JsonKey(name: 'catalogName') final String? catalogName,
      @JsonKey(name: 'isMonthlySubscription') final bool? isMonthlySubscription,
      @JsonKey(name: 'chapterMaxNo') final int? chapterCount,
      @JsonKey(name: 'freeCount') final int? freeCount,
      @JsonKey(name: 'discountOff') final int? discountOff,
      @JsonKey(name: 'freeTimeText') final String? freeTimeText,
      @JsonKey(name: 'discountTimeText') final String? discountTimeText,
      @JsonKey(name: 'status') final int? statusValue,
      @JsonKey(name: 'statusText') final String? status,
      @JsonKey(name: 'chapterReadNo') final int? lastReadChapterNo,
      @JsonKey(name: 'hot') final int? hotSort,
      @JsonKey(name: 'urgeMessage') final String? chapterUpdateMessage,
      @JsonKey(name: 'coverUrl') final String? coverUrl,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'category') final String? category}) = _$NovelImpl;

  factory _Novel.fromJson(Map<String, dynamic> json) = _$NovelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'cover')
  String? get cover;
  @override
  @JsonKey(name: 'coverThumb')
  String? get coverThumb;
  @override
  @JsonKey(name: 'summary')
  String? get summary;
  @override
  @JsonKey(name: 'summaryShort')
  String? get summaryShort;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'favouriteCount')
  int? get favoriteCount;
  @override
  @JsonKey(name: 'viewCount')
  int? get viewCount;
  @override
  @JsonKey(name: 'wordCount')
  int? get wordCount;
  @override
  @JsonKey(name: 'tags')
  List<String>? get tagList;
  @override
  @JsonKey(name: 'isFavourite')
  bool? get isFavorite;
  @override
  @JsonKey(name: 'unLockType')
  int? get unLockType; // @JsonKey(name: 'author') String? author,
  @override
  @JsonKey(name: 'catalogId')
  String? get catalogId;
  @override
  @JsonKey(name: 'catalogName')
  String? get catalogName;
  @override
  @JsonKey(name: 'isMonthlySubscription')
  bool?
      get isMonthlySubscription; // @JsonKey(name: 'authorImage') String? authorImage,
  @override
  @JsonKey(name: 'chapterMaxNo')
  int? get chapterCount;
  @override
  @JsonKey(name: 'freeCount')
  int? get freeCount;
  @override
  @JsonKey(name: 'discountOff')
  int? get discountOff;
  @override
  @JsonKey(name: 'freeTimeText')
  String? get freeTimeText;
  @override
  @JsonKey(name: 'discountTimeText')
  String? get discountTimeText;
  @override
  @JsonKey(name: 'status')
  int? get statusValue;
  @override
  @JsonKey(name: 'statusText')
  String? get status;
  @override
  @JsonKey(name: 'chapterReadNo')
  int? get lastReadChapterNo;
  @override
  @JsonKey(name: 'hot')
  int? get hotSort;
  @override
  @JsonKey(name: 'urgeMessage')
  String? get chapterUpdateMessage;
  @override
  @JsonKey(name: 'coverUrl')
  String? get coverUrl;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'category')
  String? get category;

  /// Create a copy of Novel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NovelImplCopyWith<_$NovelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
