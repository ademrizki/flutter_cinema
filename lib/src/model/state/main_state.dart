import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_state.freezed.dart';

@freezed
class MainState<T> with _$MainState<T> {
  const factory MainState.initial() = InitialState;
  const factory MainState.loading() = LoadingState;
  const factory MainState.success({required T data}) = SuccessState<T>;
  const factory MainState.fail([String? message]) = FailState;
}
