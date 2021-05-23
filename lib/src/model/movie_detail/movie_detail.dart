import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_detail.freezed.dart';
part 'movie_detail.g.dart';

@freezed
class MovieDetail with _$MovieDetail {
  const factory MovieDetail({
    int? id,
    String? title,
    @JsonKey(name: 'poster_path') String? poster,
    int? runtime,
    @JsonKey(name: 'release_date') String? releaseDate,
    @JsonKey(name: 'vote_average') double? ratingScore,
    @JsonKey(name: 'vote_count') int? numbersVote,
    bool? adult,
    String? overview,
    List<Genres>? genres,
  }) = _MovieDetail;

  factory MovieDetail.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailFromJson(json);
}

@freezed
class Genres with _$Genres {
  const factory Genres({
    int? id,
    String? name,
  }) = _Genres;

  factory Genres.fromJson(Map<String, dynamic> json) => _$GenresFromJson(json);
}
