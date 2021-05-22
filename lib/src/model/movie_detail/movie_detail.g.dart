// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieDetail _$_$_MovieDetailFromJson(Map<String, dynamic> json) {
  return _$_MovieDetail(
    id: json['id'] as int?,
    title: json['title'] as String?,
    poster: json['poster_path'] as String?,
    runtime: json['runtime'] as String?,
    releaseDate: json['release_date'] as String?,
    ratingScore: json['vote_average'] as String?,
    numbersVote: json['vote_count'] as String?,
    overview: json['overview'] as String?,
    genres: (json['genres'] as List<dynamic>?)
        ?.map((e) => Genres.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_MovieDetailToJson(_$_MovieDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'poster_path': instance.poster,
      'runtime': instance.runtime,
      'release_date': instance.releaseDate,
      'vote_average': instance.ratingScore,
      'vote_count': instance.numbersVote,
      'overview': instance.overview,
      'genres': instance.genres,
    };

_$_Genres _$_$_GenresFromJson(Map<String, dynamic> json) {
  return _$_Genres(
    id: json['id'] as int?,
    name: json['name'] as String?,
  );
}

Map<String, dynamic> _$_$_GenresToJson(_$_Genres instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
