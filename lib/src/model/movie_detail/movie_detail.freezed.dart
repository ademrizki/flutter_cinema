// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'movie_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieDetail _$MovieDetailFromJson(Map<String, dynamic> json) {
  return _MovieDetail.fromJson(json);
}

/// @nodoc
class _$MovieDetailTearOff {
  const _$MovieDetailTearOff();

  _MovieDetail call(
      {int? id,
      String? title,
      @JsonKey(name: 'poster_path') String? poster,
      String? runtime,
      @JsonKey(name: 'release_date') String? releaseDate,
      @JsonKey(name: 'vote_average') String? ratingScore,
      @JsonKey(name: 'vote_count') String? numbersVote,
      String? overview,
      List<Genres>? genres}) {
    return _MovieDetail(
      id: id,
      title: title,
      poster: poster,
      runtime: runtime,
      releaseDate: releaseDate,
      ratingScore: ratingScore,
      numbersVote: numbersVote,
      overview: overview,
      genres: genres,
    );
  }

  MovieDetail fromJson(Map<String, Object> json) {
    return MovieDetail.fromJson(json);
  }
}

/// @nodoc
const $MovieDetail = _$MovieDetailTearOff();

/// @nodoc
mixin _$MovieDetail {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String? get poster => throw _privateConstructorUsedError;
  String? get runtime => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  String? get releaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  String? get ratingScore => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_count')
  String? get numbersVote => throw _privateConstructorUsedError;
  String? get overview => throw _privateConstructorUsedError;
  List<Genres>? get genres => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieDetailCopyWith<MovieDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailCopyWith<$Res> {
  factory $MovieDetailCopyWith(
          MovieDetail value, $Res Function(MovieDetail) then) =
      _$MovieDetailCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? title,
      @JsonKey(name: 'poster_path') String? poster,
      String? runtime,
      @JsonKey(name: 'release_date') String? releaseDate,
      @JsonKey(name: 'vote_average') String? ratingScore,
      @JsonKey(name: 'vote_count') String? numbersVote,
      String? overview,
      List<Genres>? genres});
}

/// @nodoc
class _$MovieDetailCopyWithImpl<$Res> implements $MovieDetailCopyWith<$Res> {
  _$MovieDetailCopyWithImpl(this._value, this._then);

  final MovieDetail _value;
  // ignore: unused_field
  final $Res Function(MovieDetail) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? poster = freezed,
    Object? runtime = freezed,
    Object? releaseDate = freezed,
    Object? ratingScore = freezed,
    Object? numbersVote = freezed,
    Object? overview = freezed,
    Object? genres = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      poster: poster == freezed
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String?,
      runtime: runtime == freezed
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      ratingScore: ratingScore == freezed
          ? _value.ratingScore
          : ratingScore // ignore: cast_nullable_to_non_nullable
              as String?,
      numbersVote: numbersVote == freezed
          ? _value.numbersVote
          : numbersVote // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genres>?,
    ));
  }
}

/// @nodoc
abstract class _$MovieDetailCopyWith<$Res>
    implements $MovieDetailCopyWith<$Res> {
  factory _$MovieDetailCopyWith(
          _MovieDetail value, $Res Function(_MovieDetail) then) =
      __$MovieDetailCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? title,
      @JsonKey(name: 'poster_path') String? poster,
      String? runtime,
      @JsonKey(name: 'release_date') String? releaseDate,
      @JsonKey(name: 'vote_average') String? ratingScore,
      @JsonKey(name: 'vote_count') String? numbersVote,
      String? overview,
      List<Genres>? genres});
}

/// @nodoc
class __$MovieDetailCopyWithImpl<$Res> extends _$MovieDetailCopyWithImpl<$Res>
    implements _$MovieDetailCopyWith<$Res> {
  __$MovieDetailCopyWithImpl(
      _MovieDetail _value, $Res Function(_MovieDetail) _then)
      : super(_value, (v) => _then(v as _MovieDetail));

  @override
  _MovieDetail get _value => super._value as _MovieDetail;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? poster = freezed,
    Object? runtime = freezed,
    Object? releaseDate = freezed,
    Object? ratingScore = freezed,
    Object? numbersVote = freezed,
    Object? overview = freezed,
    Object? genres = freezed,
  }) {
    return _then(_MovieDetail(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      poster: poster == freezed
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String?,
      runtime: runtime == freezed
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      ratingScore: ratingScore == freezed
          ? _value.ratingScore
          : ratingScore // ignore: cast_nullable_to_non_nullable
              as String?,
      numbersVote: numbersVote == freezed
          ? _value.numbersVote
          : numbersVote // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genres>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieDetail implements _MovieDetail {
  const _$_MovieDetail(
      {this.id,
      this.title,
      @JsonKey(name: 'poster_path') this.poster,
      this.runtime,
      @JsonKey(name: 'release_date') this.releaseDate,
      @JsonKey(name: 'vote_average') this.ratingScore,
      @JsonKey(name: 'vote_count') this.numbersVote,
      this.overview,
      this.genres});

  factory _$_MovieDetail.fromJson(Map<String, dynamic> json) =>
      _$_$_MovieDetailFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  @JsonKey(name: 'poster_path')
  final String? poster;
  @override
  final String? runtime;
  @override
  @JsonKey(name: 'release_date')
  final String? releaseDate;
  @override
  @JsonKey(name: 'vote_average')
  final String? ratingScore;
  @override
  @JsonKey(name: 'vote_count')
  final String? numbersVote;
  @override
  final String? overview;
  @override
  final List<Genres>? genres;

  @override
  String toString() {
    return 'MovieDetail(id: $id, title: $title, poster: $poster, runtime: $runtime, releaseDate: $releaseDate, ratingScore: $ratingScore, numbersVote: $numbersVote, overview: $overview, genres: $genres)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MovieDetail &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.poster, poster) ||
                const DeepCollectionEquality().equals(other.poster, poster)) &&
            (identical(other.runtime, runtime) ||
                const DeepCollectionEquality()
                    .equals(other.runtime, runtime)) &&
            (identical(other.releaseDate, releaseDate) ||
                const DeepCollectionEquality()
                    .equals(other.releaseDate, releaseDate)) &&
            (identical(other.ratingScore, ratingScore) ||
                const DeepCollectionEquality()
                    .equals(other.ratingScore, ratingScore)) &&
            (identical(other.numbersVote, numbersVote) ||
                const DeepCollectionEquality()
                    .equals(other.numbersVote, numbersVote)) &&
            (identical(other.overview, overview) ||
                const DeepCollectionEquality()
                    .equals(other.overview, overview)) &&
            (identical(other.genres, genres) ||
                const DeepCollectionEquality().equals(other.genres, genres)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(poster) ^
      const DeepCollectionEquality().hash(runtime) ^
      const DeepCollectionEquality().hash(releaseDate) ^
      const DeepCollectionEquality().hash(ratingScore) ^
      const DeepCollectionEquality().hash(numbersVote) ^
      const DeepCollectionEquality().hash(overview) ^
      const DeepCollectionEquality().hash(genres);

  @JsonKey(ignore: true)
  @override
  _$MovieDetailCopyWith<_MovieDetail> get copyWith =>
      __$MovieDetailCopyWithImpl<_MovieDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MovieDetailToJson(this);
  }
}

abstract class _MovieDetail implements MovieDetail {
  const factory _MovieDetail(
      {int? id,
      String? title,
      @JsonKey(name: 'poster_path') String? poster,
      String? runtime,
      @JsonKey(name: 'release_date') String? releaseDate,
      @JsonKey(name: 'vote_average') String? ratingScore,
      @JsonKey(name: 'vote_count') String? numbersVote,
      String? overview,
      List<Genres>? genres}) = _$_MovieDetail;

  factory _MovieDetail.fromJson(Map<String, dynamic> json) =
      _$_MovieDetail.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'poster_path')
  String? get poster => throw _privateConstructorUsedError;
  @override
  String? get runtime => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'release_date')
  String? get releaseDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'vote_average')
  String? get ratingScore => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'vote_count')
  String? get numbersVote => throw _privateConstructorUsedError;
  @override
  String? get overview => throw _privateConstructorUsedError;
  @override
  List<Genres>? get genres => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MovieDetailCopyWith<_MovieDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

Genres _$GenresFromJson(Map<String, dynamic> json) {
  return _Genres.fromJson(json);
}

/// @nodoc
class _$GenresTearOff {
  const _$GenresTearOff();

  _Genres call({int? id, String? name}) {
    return _Genres(
      id: id,
      name: name,
    );
  }

  Genres fromJson(Map<String, Object> json) {
    return Genres.fromJson(json);
  }
}

/// @nodoc
const $Genres = _$GenresTearOff();

/// @nodoc
mixin _$Genres {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenresCopyWith<Genres> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenresCopyWith<$Res> {
  factory $GenresCopyWith(Genres value, $Res Function(Genres) then) =
      _$GenresCopyWithImpl<$Res>;
  $Res call({int? id, String? name});
}

/// @nodoc
class _$GenresCopyWithImpl<$Res> implements $GenresCopyWith<$Res> {
  _$GenresCopyWithImpl(this._value, this._then);

  final Genres _value;
  // ignore: unused_field
  final $Res Function(Genres) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$GenresCopyWith<$Res> implements $GenresCopyWith<$Res> {
  factory _$GenresCopyWith(_Genres value, $Res Function(_Genres) then) =
      __$GenresCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? name});
}

/// @nodoc
class __$GenresCopyWithImpl<$Res> extends _$GenresCopyWithImpl<$Res>
    implements _$GenresCopyWith<$Res> {
  __$GenresCopyWithImpl(_Genres _value, $Res Function(_Genres) _then)
      : super(_value, (v) => _then(v as _Genres));

  @override
  _Genres get _value => super._value as _Genres;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_Genres(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Genres implements _Genres {
  const _$_Genres({this.id, this.name});

  factory _$_Genres.fromJson(Map<String, dynamic> json) =>
      _$_$_GenresFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'Genres(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Genres &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$GenresCopyWith<_Genres> get copyWith =>
      __$GenresCopyWithImpl<_Genres>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GenresToJson(this);
  }
}

abstract class _Genres implements Genres {
  const factory _Genres({int? id, String? name}) = _$_Genres;

  factory _Genres.fromJson(Map<String, dynamic> json) = _$_Genres.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GenresCopyWith<_Genres> get copyWith => throw _privateConstructorUsedError;
}
