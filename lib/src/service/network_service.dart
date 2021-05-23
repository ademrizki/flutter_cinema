import 'package:dio/dio.dart';
import 'package:flutter_cinema/src/model/movie_cast/movie_cast.dart';
import 'package:flutter_cinema/src/model/movie_detail/movie_detail.dart';
import 'package:flutter_cinema/src/model/movies/movies.dart';
import 'package:flutter_cinema/src/service/repository.dart';
import 'package:flutter_cinema/src/utils/exception/dio_exceptions.dart';

class NetworkService implements RepositoryServices {
  NetworkService(this._dio);

  final Dio _dio;

  @override
  Future<Movies> fetchPopularMovies({int? page = 1}) async {
    try {
      final _data = {'page': page};

      final _response = await _dio.get(
        'movie/popular',
        queryParameters: _data,
      );

      return Movies.fromJson(_response.data);
    } on DioError catch (dioError) {
      throw DioException.fromDioError(dioError);
    }
  }

  @override
  Future<Movies> fetchNowPlayingMovies({int? page = 1}) async {
    try {
      final _data = {'page': page};

      final _response = await _dio.get(
        'movie/now_playing',
        queryParameters: _data,
      );

      return Movies.fromJson(_response.data);
    } on DioError catch (dioError) {
      throw DioException.fromDioError(dioError);
    }
  }

  @override
  Future<MovieDetail> fetchMovieDetail({required int movieId}) async {
    try {
      final _response = await _dio.get('movie/$movieId');

      return MovieDetail.fromJson(_response.data);
    } on DioError catch (dioError) {
      throw DioException.fromDioError(dioError);
    }
  }

  @override
  Future<MovieCasts> fetchMovieCasts({required int movieId}) async {
    try {
      final _response = await _dio.get('movie/$movieId/credits');

      return MovieCasts.fromJson(_response.data);
    } on DioError catch (dioError) {
      throw DioException.fromDioError(dioError);
    }
  }

  @override
  Future<Movies> fetchMovieFromSearch({
    int? page = 1,
    required String query,
  }) async {
    try {
      final _data = {
        'page': page,
        'query': query,
      };

      final _response = await _dio.get(
        'search/movie',
        queryParameters: _data,
      );

      return Movies.fromJson(_response.data);
    } on DioError catch (dioError) {
      throw DioException.fromDioError(dioError);
    }
  }
}
