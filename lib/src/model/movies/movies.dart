import 'package:freezed_annotation/freezed_annotation.dart';

part 'movies.freezed.dart';
part 'movies.g.dart';

@freezed
class Movies with _$Movies {
  const factory Movies({
    @JsonKey(name: 'page') int? page,
    @JsonKey(name: 'results') List<MoviesResult>? data,
  }) = _Movies;

  factory Movies.fromJson(Map<String, dynamic> json) => _$MoviesFromJson(json);
}

@freezed
class MoviesResult with _$MoviesResult {
  const factory MoviesResult({
    int? id,
    String? title,
    @JsonKey(name: 'vote_average') double? ratingScore,
    @JsonKey(name: 'poster_path') String? posterPath,
  }) = _MoviesResult;

  factory MoviesResult.fromJson(Map<String, dynamic> json) =>
      _$MoviesResultFromJson(json);
}
