// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'novel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NovelImpl _$$NovelImplFromJson(Map<String, dynamic> json) => _$NovelImpl(
      id: json['id'] as String?,
      cover: json['cover'] as String?,
      coverThumb: json['coverThumb'] as String?,
      summary: json['summary'] as String?,
      summaryShort: json['summaryShort'] as String?,
      title: json['title'] as String?,
      favoriteCount: (json['favouriteCount'] as num?)?.toInt(),
      viewCount: (json['viewCount'] as num?)?.toInt(),
      wordCount: (json['wordCount'] as num?)?.toInt(),
      tagList:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      isFavorite: json['isFavourite'] as bool?,
      unLockType: (json['unLockType'] as num?)?.toInt(),
      catalogId: json['catalogId'] as String?,
      catalogName: json['catalogName'] as String?,
      isMonthlySubscription: json['isMonthlySubscription'] as bool?,
      chapterCount: (json['chapterMaxNo'] as num?)?.toInt(),
      freeCount: (json['freeCount'] as num?)?.toInt(),
      discountOff: (json['discountOff'] as num?)?.toInt(),
      freeTimeText: json['freeTimeText'] as String?,
      discountTimeText: json['discountTimeText'] as String?,
      statusValue: (json['status'] as num?)?.toInt(),
      status: json['statusText'] as String?,
      lastReadChapterNo: (json['chapterReadNo'] as num?)?.toInt(),
      hotSort: (json['hot'] as num?)?.toInt(),
      chapterUpdateMessage: json['urgeMessage'] as String?,
      coverUrl: json['coverUrl'] as String?,
      description: json['description'] as String?,
      category: json['category'] as String?,
    );

Map<String, dynamic> _$$NovelImplToJson(_$NovelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cover': instance.cover,
      'coverThumb': instance.coverThumb,
      'summary': instance.summary,
      'summaryShort': instance.summaryShort,
      'title': instance.title,
      'favouriteCount': instance.favoriteCount,
      'viewCount': instance.viewCount,
      'wordCount': instance.wordCount,
      'tags': instance.tagList,
      'isFavourite': instance.isFavorite,
      'unLockType': instance.unLockType,
      'catalogId': instance.catalogId,
      'catalogName': instance.catalogName,
      'isMonthlySubscription': instance.isMonthlySubscription,
      'chapterMaxNo': instance.chapterCount,
      'freeCount': instance.freeCount,
      'discountOff': instance.discountOff,
      'freeTimeText': instance.freeTimeText,
      'discountTimeText': instance.discountTimeText,
      'status': instance.statusValue,
      'statusText': instance.status,
      'chapterReadNo': instance.lastReadChapterNo,
      'hot': instance.hotSort,
      'urgeMessage': instance.chapterUpdateMessage,
      'coverUrl': instance.coverUrl,
      'description': instance.description,
      'category': instance.category,
    };
