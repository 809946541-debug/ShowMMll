// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AudioDtoImpl _$$AudioDtoImplFromJson(Map<String, dynamic> json) =>
    _$AudioDtoImpl(
      index: (json['index'] as num?)?.toInt(),
      text: json['text'] as String?,
      audio: json['audio'] as String?,
    );

Map<String, dynamic> _$$AudioDtoImplToJson(_$AudioDtoImpl instance) =>
    <String, dynamic>{
      'index': instance.index,
      'text': instance.text,
      'audio': instance.audio,
    };
