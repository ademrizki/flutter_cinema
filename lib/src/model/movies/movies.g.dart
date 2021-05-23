// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Movies _$_$_MoviesFromJson(Map<String, dynamic> json) {
  return _$_Movies(
    page: json['page'] as int?,
    data: (json['results'] as List<dynamic>?)
        ?.map((e) => MoviesResult.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_MoviesToJson(_$_Movies instance) => <String, dynamic>{
      'page': instance.page,
      'results': instance.data,
    };

_$_MoviesResult _$_$_MoviesResultFromJson(Map<String, dynamic> json) {
  return _$_MoviesResult(
    id: json['id'] as int?,
    title: json['title'] as String?,
    ratingScore: (json['vote_average'] as num?)?.toDouble(),
    posterPath: json['poster_path'] as String?,
  );
}

Map<String, dynamic> _$_$_MoviesResultToJson(_$_MoviesResult instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'vote_average': instance.ratingScore,
      'poster_path': instance.posterPath,
    };
