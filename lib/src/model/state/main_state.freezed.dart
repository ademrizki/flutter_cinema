// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'main_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MainStateTearOff {
  const _$MainStateTearOff();

  InitialState<T> initial<T>() {
    return InitialState<T>();
  }

  LoadingState<T> loading<T>() {
    return LoadingState<T>();
  }

  SuccessState<T> success<T>({required T data}) {
    return SuccessState<T>(
      data: data,
    );
  }

  FailState<T> fail<T>([String? message]) {
    return FailState<T>(
      message,
    );
  }
}

/// @nodoc
const $MainState = _$MainStateTearOff();

/// @nodoc
mixin _$MainState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String? message) fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String? message)? fail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState<T> value) initial,
    required TResult Function(LoadingState<T> value) loading,
    required TResult Function(SuccessState<T> value) success,
    required TResult Function(FailState<T> value) fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState<T> value)? initial,
    TResult Function(LoadingState<T> value)? loading,
    TResult Function(SuccessState<T> value)? success,
    TResult Function(FailState<T> value)? fail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<T, $Res> {
  factory $MainStateCopyWith(
          MainState<T> value, $Res Function(MainState<T>) then) =
      _$MainStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$MainStateCopyWithImpl<T, $Res> implements $MainStateCopyWith<T, $Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

  final MainState<T> _value;
  // ignore: unused_field
  final $Res Function(MainState<T>) _then;
}

/// @nodoc
abstract class $InitialStateCopyWith<T, $Res> {
  factory $InitialStateCopyWith(
          InitialState<T> value, $Res Function(InitialState<T>) then) =
      _$InitialStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$InitialStateCopyWithImpl<T, $Res>
    extends _$MainStateCopyWithImpl<T, $Res>
    implements $InitialStateCopyWith<T, $Res> {
  _$InitialStateCopyWithImpl(
      InitialState<T> _value, $Res Function(InitialState<T>) _then)
      : super(_value, (v) => _then(v as InitialState<T>));

  @override
  InitialState<T> get _value => super._value as InitialState<T>;
}

/// @nodoc

class _$InitialState<T> implements InitialState<T> {
  const _$InitialState();

  @override
  String toString() {
    return 'MainState<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialState<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String? message) fail,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String? message)? fail,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState<T> value) initial,
    required TResult Function(LoadingState<T> value) loading,
    required TResult Function(SuccessState<T> value) success,
    required TResult Function(FailState<T> value) fail,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState<T> value)? initial,
    TResult Function(LoadingState<T> value)? loading,
    TResult Function(SuccessState<T> value)? success,
    TResult Function(FailState<T> value)? fail,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialState<T> implements MainState<T> {
  const factory InitialState() = _$InitialState<T>;
}

/// @nodoc
abstract class $LoadingStateCopyWith<T, $Res> {
  factory $LoadingStateCopyWith(
          LoadingState<T> value, $Res Function(LoadingState<T>) then) =
      _$LoadingStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$LoadingStateCopyWithImpl<T, $Res>
    extends _$MainStateCopyWithImpl<T, $Res>
    implements $LoadingStateCopyWith<T, $Res> {
  _$LoadingStateCopyWithImpl(
      LoadingState<T> _value, $Res Function(LoadingState<T>) _then)
      : super(_value, (v) => _then(v as LoadingState<T>));

  @override
  LoadingState<T> get _value => super._value as LoadingState<T>;
}

/// @nodoc

class _$LoadingState<T> implements LoadingState<T> {
  const _$LoadingState();

  @override
  String toString() {
    return 'MainState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingState<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String? message) fail,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String? message)? fail,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState<T> value) initial,
    required TResult Function(LoadingState<T> value) loading,
    required TResult Function(SuccessState<T> value) success,
    required TResult Function(FailState<T> value) fail,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState<T> value)? initial,
    TResult Function(LoadingState<T> value)? loading,
    TResult Function(SuccessState<T> value)? success,
    TResult Function(FailState<T> value)? fail,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState<T> implements MainState<T> {
  const factory LoadingState() = _$LoadingState<T>;
}

/// @nodoc
abstract class $SuccessStateCopyWith<T, $Res> {
  factory $SuccessStateCopyWith(
          SuccessState<T> value, $Res Function(SuccessState<T>) then) =
      _$SuccessStateCopyWithImpl<T, $Res>;
  $Res call({T data});
}

/// @nodoc
class _$SuccessStateCopyWithImpl<T, $Res>
    extends _$MainStateCopyWithImpl<T, $Res>
    implements $SuccessStateCopyWith<T, $Res> {
  _$SuccessStateCopyWithImpl(
      SuccessState<T> _value, $Res Function(SuccessState<T>) _then)
      : super(_value, (v) => _then(v as SuccessState<T>));

  @override
  SuccessState<T> get _value => super._value as SuccessState<T>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(SuccessState<T>(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SuccessState<T> implements SuccessState<T> {
  const _$SuccessState({required this.data});

  @override
  final T data;

  @override
  String toString() {
    return 'MainState<$T>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SuccessState<T> &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $SuccessStateCopyWith<T, SuccessState<T>> get copyWith =>
      _$SuccessStateCopyWithImpl<T, SuccessState<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String? message) fail,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String? message)? fail,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState<T> value) initial,
    required TResult Function(LoadingState<T> value) loading,
    required TResult Function(SuccessState<T> value) success,
    required TResult Function(FailState<T> value) fail,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState<T> value)? initial,
    TResult Function(LoadingState<T> value)? loading,
    TResult Function(SuccessState<T> value)? success,
    TResult Function(FailState<T> value)? fail,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessState<T> implements MainState<T> {
  const factory SuccessState({required T data}) = _$SuccessState<T>;

  T get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuccessStateCopyWith<T, SuccessState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailStateCopyWith<T, $Res> {
  factory $FailStateCopyWith(
          FailState<T> value, $Res Function(FailState<T>) then) =
      _$FailStateCopyWithImpl<T, $Res>;
  $Res call({String? message});
}

/// @nodoc
class _$FailStateCopyWithImpl<T, $Res> extends _$MainStateCopyWithImpl<T, $Res>
    implements $FailStateCopyWith<T, $Res> {
  _$FailStateCopyWithImpl(
      FailState<T> _value, $Res Function(FailState<T>) _then)
      : super(_value, (v) => _then(v as FailState<T>));

  @override
  FailState<T> get _value => super._value as FailState<T>;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(FailState<T>(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FailState<T> implements FailState<T> {
  const _$FailState([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'MainState<$T>.fail(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FailState<T> &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $FailStateCopyWith<T, FailState<T>> get copyWith =>
      _$FailStateCopyWithImpl<T, FailState<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String? message) fail,
  }) {
    return fail(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String? message)? fail,
    required TResult orElse(),
  }) {
    if (fail != null) {
      return fail(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState<T> value) initial,
    required TResult Function(LoadingState<T> value) loading,
    required TResult Function(SuccessState<T> value) success,
    required TResult Function(FailState<T> value) fail,
  }) {
    return fail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState<T> value)? initial,
    TResult Function(LoadingState<T> value)? loading,
    TResult Function(SuccessState<T> value)? success,
    TResult Function(FailState<T> value)? fail,
    required TResult orElse(),
  }) {
    if (fail != null) {
      return fail(this);
    }
    return orElse();
  }
}

abstract class FailState<T> implements MainState<T> {
  const factory FailState([String? message]) = _$FailState<T>;

  String? get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FailStateCopyWith<T, FailState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
