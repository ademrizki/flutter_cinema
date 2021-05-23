import 'package:dio/dio.dart';
import 'package:flutter_cinema/src/model/movies/movies.dart';
import 'package:flutter_cinema/src/model/state/main_state.dart';
import 'package:flutter_cinema/src/provider/movie_list_notifier.dart';
import 'package:flutter_cinema/src/service/network_service.dart';
import 'package:flutter_cinema/src/utils/constants/constant_env.dart';
import 'package:flutter_cinema/src/utils/constants/constant_url.dart';
import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/mockito.dart';
//
// class MockDio extends Mock implements Dio {}

void main() {
  /// Initial Data Fetch
  test('State should be success after fetch initial data: ', () async {
    final _networkService = NetworkService(Dio(
      BaseOptions(
        baseUrl: BASE_URL,
        connectTimeout: 5000,
        receiveTimeout: 3000,
        queryParameters: {'api_key': MOVIE_API_KEY},
        contentType: 'application/json',
      ),
    ));
    final moviesNotifier = MoviesNotifier(_networkService);

    expect(moviesNotifier.debugState, InitialState<Movies>());

    await moviesNotifier.fetchMovies();

    expect(
      moviesNotifier.debugState,
      SuccessState<Movies>(data: moviesNotifier.movies!),
    );
  });

  /// Search Movie Fetch
  test('State should be success after fetch data from search: ', () async {
    final _networkService = NetworkService(Dio(
      BaseOptions(
        baseUrl: BASE_URL,
        connectTimeout: 5000,
        receiveTimeout: 3000,
        queryParameters: {'api_key': MOVIE_API_KEY},
        contentType: 'application/json',
      ),
    ));
    final moviesNotifier = MoviesNotifier(_networkService);

    expect(moviesNotifier.debugState, InitialState<Movies>());

    await moviesNotifier.fetchMoviesFromSearch(query: 'mortal kombat');

    expect(
      moviesNotifier.debugState,
      SuccessState<Movies>(data: moviesNotifier.movies!),
    );
  });
}
