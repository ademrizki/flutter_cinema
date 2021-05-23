import 'package:flutter_cinema/src/model/movie_detail/movie_detail.dart';
import 'package:flutter_cinema/src/model/state/main_state.dart';
import 'package:flutter_cinema/src/service/network_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MovieDetailNotifier extends StateNotifier<MainState<MovieDetail>> {
  MovieDetailNotifier(this._networkService) : super(InitialState());

  final NetworkService _networkService;

  Future fetchMovieDetail({required int movieId}) async {
    try {
      state = LoadingState();

      final _result = await _networkService.fetchMovieDetail(movieId: movieId);

      state = SuccessState(data: _result);
    } catch (e) {
      print(e.toString());
      state = FailState(e.toString());
    }
  }
}
