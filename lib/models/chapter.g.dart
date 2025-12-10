// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChapterImpl _$$ChapterImplFromJson(Map<String, dynamic> json) =>
    _$ChapterImpl(
      id: json['id'] as String?,
      bookId: json['bookId'] as String?,
      no: (json['no'] as num?)?.toInt(),
      isUnlocked: json['unLock'] as bool?,
      title: json['title'] as String?,
      content: (json['contents'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      coinPrice: (json['unLockCoins'] as num?)?.toInt(),
      useableCoin: (json['useableCoin'] as num?)?.toInt(),
      showFavourite: json['showFavourite'] as bool?,
      readPower: json['readPower'] as bool?,
    );

Map<String, dynamic> _$$ChapterImplToJson(_$ChapterImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bookId': instance.bookId,
      'no': instance.no,
      'unLock': instance.isUnlocked,
      'title': instance.title,
      'contents': instance.content,
      'unLockCoins': instance.coinPrice,
      'useableCoin': instance.useableCoin,
      'showFavourite': instance.showFavourite,
      'readPower': instance.readPower,
    };
