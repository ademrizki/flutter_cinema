import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_cast.freezed.dart';
part 'movie_cast.g.dart';

@freezed
class MovieCasts with _$MovieCasts {
  const factory MovieCasts({
    int? id,
    List<Cast>? cast,
  }) = _MovieCasts;

  factory MovieCasts.fromJson(Map<String, dynamic> json) =>
      _$MovieCastsFromJson(json);
}

@freezed
class Cast with _$Cast {
  const factory Cast({
    int? id,
    String? name,
    String? character,
    @JsonKey(name: 'profile_path') String? picture,
  }) = _Cast;

  factory Cast.fromJson(Map<String, dynamic> json) => _$CastFromJson(json);
}
