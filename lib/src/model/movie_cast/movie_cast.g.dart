// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_cast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieCasts _$_$_MovieCastsFromJson(Map<String, dynamic> json) {
  return _$_MovieCasts(
    id: json['id'] as int?,
    cast: (json['cast'] as List<dynamic>?)
        ?.map((e) => Cast.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_MovieCastsToJson(_$_MovieCasts instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cast': instance.cast,
    };

_$_Cast _$_$_CastFromJson(Map<String, dynamic> json) {
  return _$_Cast(
    id: json['id'] as int?,
    name: json['name'] as String?,
    character: json['character'] as String?,
    picture: json['profile_path'] as String?,
  );
}

Map<String, dynamic> _$_$_CastToJson(_$_Cast instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'character': instance.character,
      'profile_path': instance.picture,
    };
