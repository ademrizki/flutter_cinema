import 'package:flutter/cupertino.dart';
import 'package:flutter_cinema/src/model/movies/movies.dart';
import 'package:flutter_cinema/src/model/state/main_state.dart';
import 'package:flutter_cinema/src/service/network_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MoviesNotifier extends StateNotifier<MainState<Movies>> {
  MoviesNotifier(this._networkService) : super(InitialState());

  final NetworkService _networkService;

  final movieSections = {
    'now_playing': Text('Now Playing'),
    'popular': Text('Popular Movie'),
  };

  final selectedMovieSection = ValueNotifier<String>('now_playing');

  Future fetchMovies() async {
    try {
      state = LoadingState();

      /// FETCH MOVIE LIST
      late final _result;
      if (selectedMovieSection.value == 'now_playing') {
        _result = await _networkService.fetchNowPlayingMovies();
      } else {
        _result = await _networkService.fetchPopularMovies();
      }

      state = SuccessState(data: _result);
    } catch (e) {
      state = FailState(e.toString());
    }
  }
}
