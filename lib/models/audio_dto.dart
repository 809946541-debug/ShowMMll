import 'package:freezed_annotation/freezed_annotation.dart';

part 'audio_dto.freezed.dart';
part 'audio_dto.g.dart';

@freezed
abstract class AudioDto with _$AudioDto {
  const AudioDto._();

  @JsonSerializable()
  factory AudioDto({
    @JsonKey(name: 'index') int? index,
    @JsonKey(name: 'text') String? text,
    @JsonKey(name: 'audio') String? audio,
  }) = _AudioDto;

  factory AudioDto.fromJson(Map<String, dynamic> json) =>
      _$AudioDtoFromJson(json);
}
