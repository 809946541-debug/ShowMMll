import 'package:freezed_annotation/freezed_annotation.dart';
import 'audio_dto.dart';

part 'chapteraudio.freezed.dart';
part 'chapteraudio.g.dart';

@freezed
abstract class ChapterAudioDetailDto with _$ChapterAudioDetailDto {
  const ChapterAudioDetailDto._();

  @JsonSerializable()
  factory ChapterAudioDetailDto({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'bookId') String? bookId,
    @JsonKey(name: 'no') int? no,
    @JsonKey(name: 'cover') String? cover,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'bookTitle') String? bookTitle,
    @JsonKey(name: 'audio') List<AudioDto>? audio,
  }) = _ChapterAudioDetailDto;

  factory ChapterAudioDetailDto.fromJson(Map<String, dynamic> json) =>
      _$ChapterAudioDetailDtoFromJson(json);
}
