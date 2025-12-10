import 'package:freezed_annotation/freezed_annotation.dart';

part 'novel.freezed.dart';
part 'novel.g.dart';

@freezed
abstract class Novel with _$Novel {
  @JsonSerializable()
  factory Novel({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'cover') String? cover,
    @JsonKey(name: 'coverThumb') String? coverThumb,
    @JsonKey(name: 'summary') String? summary,
    @JsonKey(name: 'summaryShort') String? summaryShort,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'favouriteCount') int? favoriteCount,
    @JsonKey(name: 'viewCount') int? viewCount,
    @JsonKey(name: 'wordCount') int? wordCount,
    @Default([]) @JsonKey(name: 'tags') List<String>? tagList,
    @JsonKey(name: 'isFavourite') bool? isFavorite,
    @JsonKey(name: 'unLockType') int? unLockType,
    // @JsonKey(name: 'author') String? author,
    @JsonKey(name: 'catalogId') String? catalogId,
    @JsonKey(name: 'catalogName') String? catalogName,
    @JsonKey(name: 'isMonthlySubscription') bool? isMonthlySubscription,
    // @JsonKey(name: 'authorImage') String? authorImage,
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
    @JsonKey(name: 'category') String? category,
  }) = _Novel;

  factory Novel.fromJson(Map<String, dynamic> json) => _$NovelFromJson(json);
}
