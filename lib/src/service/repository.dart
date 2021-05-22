import 'package:flutter_cinema/src/model/movie_cast/movie_cast.dart';
import 'package:flutter_cinema/src/model/movie_detail/movie_detail.dart';
import 'package:flutter_cinema/src/model/movies/movies.dart';

abstract class RepositoryServices {
  Future<Movies> fetchPopularMovies({int? page});

  Future<Movies> fetchNowPlayingMovies({int? page});

  Future<MovieDetail> fetchMovieDetail({required String movieId});

  Future<MovieCasts> fetchMovieCasts({required String movieId});
}
