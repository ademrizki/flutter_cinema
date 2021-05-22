import 'package:flutter/foundation.dart';
import 'package:flutter_cinema/src/model/movie_cast/movie_cast.dart';
import 'package:flutter_cinema/src/model/movie_detail/movie_detail.dart';
import 'package:flutter_cinema/src/model/movies/movies.dart';

abstract class RepositoryServices {
  Future<Movies> fetchPopularMovies({String page});

  Future<Movies> fetchNowPlayingMovies({String page});

  Future<MovieDetail> fetchMovieDetail({@required String movieId});

  Future<MovieCasts> fetchMovieCasts({@required String movieId});
}
