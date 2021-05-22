// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'movies.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Movies _$MoviesFromJson(Map<String, dynamic> json) {
  return _Movies.fromJson(json);
}

/// @nodoc
class _$MoviesTearOff {
  const _$MoviesTearOff();

  _Movies call(
      {@JsonKey(name: 'page') int? page,
      @JsonKey(name: 'result') List<MoviesResult>? data}) {
    return _Movies(
      page: page,
      data: data,
    );
  }

  Movies fromJson(Map<String, Object> json) {
    return Movies.fromJson(json);
  }
}

/// @nodoc
const $Movies = _$MoviesTearOff();

/// @nodoc
mixin _$Movies {
  @JsonKey(name: 'page')
  int? get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'result')
  List<MoviesResult>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoviesCopyWith<Movies> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesCopyWith<$Res> {
  factory $MoviesCopyWith(Movies value, $Res Function(Movies) then) =
      _$MoviesCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'page') int? page,
      @JsonKey(name: 'result') List<MoviesResult>? data});
}

/// @nodoc
class _$MoviesCopyWithImpl<$Res> implements $MoviesCopyWith<$Res> {
  _$MoviesCopyWithImpl(this._value, this._then);

  final Movies _value;
  // ignore: unused_field
  final $Res Function(Movies) _then;

  @override
  $Res call({
    Object? page = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<MoviesResult>?,
    ));
  }
}

/// @nodoc
abstract class _$MoviesCopyWith<$Res> implements $MoviesCopyWith<$Res> {
  factory _$MoviesCopyWith(_Movies value, $Res Function(_Movies) then) =
      __$MoviesCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'page') int? page,
      @JsonKey(name: 'result') List<MoviesResult>? data});
}

/// @nodoc
class __$MoviesCopyWithImpl<$Res> extends _$MoviesCopyWithImpl<$Res>
    implements _$MoviesCopyWith<$Res> {
  __$MoviesCopyWithImpl(_Movies _value, $Res Function(_Movies) _then)
      : super(_value, (v) => _then(v as _Movies));

  @override
  _Movies get _value => super._value as _Movies;

  @override
  $Res call({
    Object? page = freezed,
    Object? data = freezed,
  }) {
    return _then(_Movies(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<MoviesResult>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Movies implements _Movies {
  const _$_Movies(
      {@JsonKey(name: 'page') this.page, @JsonKey(name: 'result') this.data});

  factory _$_Movies.fromJson(Map<String, dynamic> json) =>
      _$_$_MoviesFromJson(json);

  @override
  @JsonKey(name: 'page')
  final int? page;
  @override
  @JsonKey(name: 'result')
  final List<MoviesResult>? data;

  @override
  String toString() {
    return 'Movies(page: $page, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Movies &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$MoviesCopyWith<_Movies> get copyWith =>
      __$MoviesCopyWithImpl<_Movies>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MoviesToJson(this);
  }
}

abstract class _Movies implements Movies {
  const factory _Movies(
      {@JsonKey(name: 'page') int? page,
      @JsonKey(name: 'result') List<MoviesResult>? data}) = _$_Movies;

  factory _Movies.fromJson(Map<String, dynamic> json) = _$_Movies.fromJson;

  @override
  @JsonKey(name: 'page')
  int? get page => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'result')
  List<MoviesResult>? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MoviesCopyWith<_Movies> get copyWith => throw _privateConstructorUsedError;
}

MoviesResult _$MoviesResultFromJson(Map<String, dynamic> json) {
  return _MoviesResult.fromJson(json);
}

/// @nodoc
class _$MoviesResultTearOff {
  const _$MoviesResultTearOff();

  _MoviesResult call(
      {int? id,
      String? title,
      @JsonKey(name: 'poster_path') String? posterPath}) {
    return _MoviesResult(
      id: id,
      title: title,
      posterPath: posterPath,
    );
  }

  MoviesResult fromJson(Map<String, Object> json) {
    return MoviesResult.fromJson(json);
  }
}

/// @nodoc
const $MoviesResult = _$MoviesResultTearOff();

/// @nodoc
mixin _$MoviesResult {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoviesResultCopyWith<MoviesResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesResultCopyWith<$Res> {
  factory $MoviesResultCopyWith(
          MoviesResult value, $Res Function(MoviesResult) then) =
      _$MoviesResultCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? title,
      @JsonKey(name: 'poster_path') String? posterPath});
}

/// @nodoc
class _$MoviesResultCopyWithImpl<$Res> implements $MoviesResultCopyWith<$Res> {
  _$MoviesResultCopyWithImpl(this._value, this._then);

  final MoviesResult _value;
  // ignore: unused_field
  final $Res Function(MoviesResult) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? posterPath = freezed,
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
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$MoviesResultCopyWith<$Res>
    implements $MoviesResultCopyWith<$Res> {
  factory _$MoviesResultCopyWith(
          _MoviesResult value, $Res Function(_MoviesResult) then) =
      __$MoviesResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? title,
      @JsonKey(name: 'poster_path') String? posterPath});
}

/// @nodoc
class __$MoviesResultCopyWithImpl<$Res> extends _$MoviesResultCopyWithImpl<$Res>
    implements _$MoviesResultCopyWith<$Res> {
  __$MoviesResultCopyWithImpl(
      _MoviesResult _value, $Res Function(_MoviesResult) _then)
      : super(_value, (v) => _then(v as _MoviesResult));

  @override
  _MoviesResult get _value => super._value as _MoviesResult;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? posterPath = freezed,
  }) {
    return _then(_MoviesResult(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MoviesResult implements _MoviesResult {
  const _$_MoviesResult(
      {this.id, this.title, @JsonKey(name: 'poster_path') this.posterPath});

  factory _$_MoviesResult.fromJson(Map<String, dynamic> json) =>
      _$_$_MoviesResultFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  @JsonKey(name: 'poster_path')
  final String? posterPath;

  @override
  String toString() {
    return 'MoviesResult(id: $id, title: $title, posterPath: $posterPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MoviesResult &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.posterPath, posterPath) ||
                const DeepCollectionEquality()
                    .equals(other.posterPath, posterPath)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(posterPath);

  @JsonKey(ignore: true)
  @override
  _$MoviesResultCopyWith<_MoviesResult> get copyWith =>
      __$MoviesResultCopyWithImpl<_MoviesResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MoviesResultToJson(this);
  }
}

abstract class _MoviesResult implements MoviesResult {
  const factory _MoviesResult(
      {int? id,
      String? title,
      @JsonKey(name: 'poster_path') String? posterPath}) = _$_MoviesResult;

  factory _MoviesResult.fromJson(Map<String, dynamic> json) =
      _$_MoviesResult.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MoviesResultCopyWith<_MoviesResult> get copyWith =>
      throw _privateConstructorUsedError;
}
