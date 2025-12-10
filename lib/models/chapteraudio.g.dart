// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapteraudio.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChapterAudioDetailDtoImpl _$$ChapterAudioDetailDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ChapterAudioDetailDtoImpl(
      id: json['id'] as String?,
      bookId: json['bookId'] as String?,
      no: (json['no'] as num?)?.toInt(),
      cover: json['cover'] as String?,
      title: json['title'] as String?,
      bookTitle: json['bookTitle'] as String?,
      audio: (json['audio'] as List<dynamic>?)
          ?.map((e) => AudioDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ChapterAudioDetailDtoImplToJson(
        _$ChapterAudioDetailDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bookId': instance.bookId,
      'no': instance.no,
      'cover': instance.cover,
      'title': instance.title,
      'bookTitle': instance.bookTitle,
      'audio': instance.audio,
    };
