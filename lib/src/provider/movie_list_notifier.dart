import 'package:flutter/cupertino.dart';
import 'package:flutter_cinema/src/model/movies/movies.dart';
import 'package:flutter_cinema/src/model/state/main_state.dart';
import 'package:flutter_cinema/src/service/network_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MoviesNotifier extends StateNotifier<MainState<Movies>> {
  MoviesNotifier(this._networkService) : super(InitialState());

  final searchController = TextEditingController();
  final NetworkService _networkService;

  final movieSections = {
    'now_playing': Text('Now Playing'),
    'popular': Text('Popular Movie'),
  };

  final selectedMovieSection = ValueNotifier<String>('now_playing');

  final isLoading = ValueNotifier<bool>(false);

  Movies? _movies;

  int _page = 1;

  bool _isOnSearch = false;

  bool fnOnPagination(ScrollNotification scrollInfo) {
    if (scrollInfo.metrics.pixels == scrollInfo.metrics.maxScrollExtent) {
      _page++;
      fetchNextPage(page: _page);
      return true;
    }
    return false;
  }

  Future fetchMovies({int? page}) async {
    _isOnSearch = false;
    _page = 1;
    try {
      state = LoadingState();

      /// FETCH MOVIE LIST
      // late final Movies _result;
      if (selectedMovieSection.value == 'now_playing') {
        _movies = await _networkService.fetchNowPlayingMovies();
      } else {
        _movies = await _networkService.fetchPopularMovies();
      }

      state = SuccessState(data: _movies!);
    } catch (e) {
      state = FailState(e.toString());
    }
  }

  Future fetchMoviesFromSearch({int? page, required String query}) async {
    if (query.isNotEmpty) {
      _page = 1;
      _isOnSearch = true;
      try {
        state = LoadingState();

        /// FETCH MOVIE LIST FROM SEARCH
        _movies = await _networkService.fetchMovieFromSearch(query: query);

        state = SuccessState(data: _movies!);
      } catch (e) {
        state = FailState(e.toString());
      }
    } else {
      await fetchMovies();
    }
  }

  Future fetchNextPage({int? page}) async {
    late final Movies _result;
    if (_movies != null && page != null) {
      isLoading.value = true;
      if (_isOnSearch == true && searchController.text.isNotEmpty) {
        _result = await _networkService.fetchMovieFromSearch(
          query: searchController.text,
          page: page,
        );
      } else {
        if (selectedMovieSection.value == 'now_playing') {
          _result = await _networkService.fetchNowPlayingMovies(page: page);
        } else {
          _result = await _networkService.fetchPopularMovies(page: page);
        }
      }

      if (_movies!.data != null) {
        _movies!.data!.addAll(_result.data!);
        isLoading.value = false;
      }
    }

    state = SuccessState(data: _movies!);
  }
}
