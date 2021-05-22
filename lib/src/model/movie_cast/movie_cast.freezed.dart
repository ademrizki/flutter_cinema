// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'movie_cast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieCasts _$MovieCastsFromJson(Map<String, dynamic> json) {
  return _MovieCasts.fromJson(json);
}

/// @nodoc
class _$MovieCastsTearOff {
  const _$MovieCastsTearOff();

  _MovieCasts call({int? id, List<Cast>? cast}) {
    return _MovieCasts(
      id: id,
      cast: cast,
    );
  }

  MovieCasts fromJson(Map<String, Object> json) {
    return MovieCasts.fromJson(json);
  }
}

/// @nodoc
const $MovieCasts = _$MovieCastsTearOff();

/// @nodoc
mixin _$MovieCasts {
  int? get id => throw _privateConstructorUsedError;
  List<Cast>? get cast => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieCastsCopyWith<MovieCasts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCastsCopyWith<$Res> {
  factory $MovieCastsCopyWith(
          MovieCasts value, $Res Function(MovieCasts) then) =
      _$MovieCastsCopyWithImpl<$Res>;
  $Res call({int? id, List<Cast>? cast});
}

/// @nodoc
class _$MovieCastsCopyWithImpl<$Res> implements $MovieCastsCopyWith<$Res> {
  _$MovieCastsCopyWithImpl(this._value, this._then);

  final MovieCasts _value;
  // ignore: unused_field
  final $Res Function(MovieCasts) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? cast = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      cast: cast == freezed
          ? _value.cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<Cast>?,
    ));
  }
}

/// @nodoc
abstract class _$MovieCastsCopyWith<$Res> implements $MovieCastsCopyWith<$Res> {
  factory _$MovieCastsCopyWith(
          _MovieCasts value, $Res Function(_MovieCasts) then) =
      __$MovieCastsCopyWithImpl<$Res>;
  @override
  $Res call({int? id, List<Cast>? cast});
}

/// @nodoc
class __$MovieCastsCopyWithImpl<$Res> extends _$MovieCastsCopyWithImpl<$Res>
    implements _$MovieCastsCopyWith<$Res> {
  __$MovieCastsCopyWithImpl(
      _MovieCasts _value, $Res Function(_MovieCasts) _then)
      : super(_value, (v) => _then(v as _MovieCasts));

  @override
  _MovieCasts get _value => super._value as _MovieCasts;

  @override
  $Res call({
    Object? id = freezed,
    Object? cast = freezed,
  }) {
    return _then(_MovieCasts(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      cast: cast == freezed
          ? _value.cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<Cast>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieCasts implements _MovieCasts {
  const _$_MovieCasts({this.id, this.cast});

  factory _$_MovieCasts.fromJson(Map<String, dynamic> json) =>
      _$_$_MovieCastsFromJson(json);

  @override
  final int? id;
  @override
  final List<Cast>? cast;

  @override
  String toString() {
    return 'MovieCasts(id: $id, cast: $cast)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MovieCasts &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.cast, cast) ||
                const DeepCollectionEquality().equals(other.cast, cast)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(cast);

  @JsonKey(ignore: true)
  @override
  _$MovieCastsCopyWith<_MovieCasts> get copyWith =>
      __$MovieCastsCopyWithImpl<_MovieCasts>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MovieCastsToJson(this);
  }
}

abstract class _MovieCasts implements MovieCasts {
  const factory _MovieCasts({int? id, List<Cast>? cast}) = _$_MovieCasts;

  factory _MovieCasts.fromJson(Map<String, dynamic> json) =
      _$_MovieCasts.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  List<Cast>? get cast => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MovieCastsCopyWith<_MovieCasts> get copyWith =>
      throw _privateConstructorUsedError;
}

Cast _$CastFromJson(Map<String, dynamic> json) {
  return _Cast.fromJson(json);
}

/// @nodoc
class _$CastTearOff {
  const _$CastTearOff();

  _Cast call(
      {int? id,
      String? name,
      String? character,
      @JsonKey(name: 'profile_path') String? picture}) {
    return _Cast(
      id: id,
      name: name,
      character: character,
      picture: picture,
    );
  }

  Cast fromJson(Map<String, Object> json) {
    return Cast.fromJson(json);
  }
}

/// @nodoc
const $Cast = _$CastTearOff();

/// @nodoc
mixin _$Cast {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get character => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_path')
  String? get picture => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CastCopyWith<Cast> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CastCopyWith<$Res> {
  factory $CastCopyWith(Cast value, $Res Function(Cast) then) =
      _$CastCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      String? character,
      @JsonKey(name: 'profile_path') String? picture});
}

/// @nodoc
class _$CastCopyWithImpl<$Res> implements $CastCopyWith<$Res> {
  _$CastCopyWithImpl(this._value, this._then);

  final Cast _value;
  // ignore: unused_field
  final $Res Function(Cast) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? character = freezed,
    Object? picture = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      character: character == freezed
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CastCopyWith<$Res> implements $CastCopyWith<$Res> {
  factory _$CastCopyWith(_Cast value, $Res Function(_Cast) then) =
      __$CastCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      String? character,
      @JsonKey(name: 'profile_path') String? picture});
}

/// @nodoc
class __$CastCopyWithImpl<$Res> extends _$CastCopyWithImpl<$Res>
    implements _$CastCopyWith<$Res> {
  __$CastCopyWithImpl(_Cast _value, $Res Function(_Cast) _then)
      : super(_value, (v) => _then(v as _Cast));

  @override
  _Cast get _value => super._value as _Cast;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? character = freezed,
    Object? picture = freezed,
  }) {
    return _then(_Cast(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      character: character == freezed
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Cast implements _Cast {
  const _$_Cast(
      {this.id,
      this.name,
      this.character,
      @JsonKey(name: 'profile_path') this.picture});

  factory _$_Cast.fromJson(Map<String, dynamic> json) =>
      _$_$_CastFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? character;
  @override
  @JsonKey(name: 'profile_path')
  final String? picture;

  @override
  String toString() {
    return 'Cast(id: $id, name: $name, character: $character, picture: $picture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Cast &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.character, character) ||
                const DeepCollectionEquality()
                    .equals(other.character, character)) &&
            (identical(other.picture, picture) ||
                const DeepCollectionEquality().equals(other.picture, picture)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(character) ^
      const DeepCollectionEquality().hash(picture);

  @JsonKey(ignore: true)
  @override
  _$CastCopyWith<_Cast> get copyWith =>
      __$CastCopyWithImpl<_Cast>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CastToJson(this);
  }
}

abstract class _Cast implements Cast {
  const factory _Cast(
      {int? id,
      String? name,
      String? character,
      @JsonKey(name: 'profile_path') String? picture}) = _$_Cast;

  factory _Cast.fromJson(Map<String, dynamic> json) = _$_Cast.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get character => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'profile_path')
  String? get picture => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CastCopyWith<_Cast> get copyWith => throw _privateConstructorUsedError;
}
