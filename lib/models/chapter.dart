import 'package:freezed_annotation/freezed_annotation.dart';

part 'chapter.freezed.dart';
part 'chapter.g.dart';

@freezed
abstract class Chapter with _$Chapter {
  const Chapter._();

  @JsonSerializable()
  factory Chapter({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'bookId') String? bookId,
    @JsonKey(name: 'no') int? no,
    @JsonKey(name: 'unLock') bool? isUnlocked,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'contents') List<String>? content,
    @JsonKey(name: 'unLockCoins') int? coinPrice,
    @JsonKey(name: 'useableCoin') int? useableCoin,
    @JsonKey(name: 'showFavourite') bool? showFavourite,
    @JsonKey(name: 'readPower') bool? readPower,
    @JsonKey(name: 'videoUrl') String? videoUrl,
  }) = _Chapter;

  factory Chapter.fromJson(Map<String, dynamic> json) =>
      _$ChapterFromJson(json);

  bool get canView => (isUnlocked ?? false) || (readPower ?? false);
}
