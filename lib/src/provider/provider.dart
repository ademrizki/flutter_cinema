import 'package:dio/dio.dart';
import 'package:flutter_cinema/src/model/movies/movies.dart';
import 'package:flutter_cinema/src/model/state/main_state.dart';
import 'package:flutter_cinema/src/provider/movie_list_notifier.dart';
import 'package:flutter_cinema/src/service/network_service.dart';
import 'package:flutter_cinema/src/utils/constants/constant_env.dart';
import 'package:flutter_cinema/src/utils/constants/constant_url.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Dio Provider (For Fetch Data)
final _dioProvider = Provider<Dio>(
  (_ref) => Dio(
    BaseOptions(
      baseUrl: BASE_URL,
      connectTimeout: 5000,
      receiveTimeout: 3000,
      queryParameters: {'api_key': MOVIE_API_KEY},
      contentType: 'application/json',
    ),
  ),
);

/// Dio Provider (For Fetch Data)
final _networkServiceProvider = Provider<NetworkService>(
  (_ref) => NetworkService(
    _ref.read(_dioProvider),
  ),
);

/// Movies Notifier Provider
final moviesProvider = StateNotifierProvider<MoviesNotifier, MainState<Movies>>(
  (ref) => MoviesNotifier(
    ref.read(_networkServiceProvider),
  )..fetchMovies(),
);
