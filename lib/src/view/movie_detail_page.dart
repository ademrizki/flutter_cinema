import 'package:extended_image/extended_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cinema/src/model/movie_cast/movie_cast.dart';
import 'package:flutter_cinema/src/model/movie_detail/movie_detail.dart';
import 'package:flutter_cinema/src/provider/provider.dart';
import 'package:flutter_cinema/src/utils/constants/constant_url.dart';
import 'package:flutter_cinema/src/utils/exception/dio_exceptions.dart';
import 'package:flutter_cinema/src/view/widget/error_placeholder.dart';
import 'package:flutter_cinema/src/view/widget/shimmer_grid.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MovieDetailPage extends StatelessWidget {
  static const String route = '/movieDetailPage';
  MovieDetailPage({
    Key? key,
    this.imagePath,
    this.heroId,
    this.movieId,
  }) : super(key: key);

  final String? imagePath;
  final int? heroId;
  final int? movieId;

  @override
  Widget build(BuildContext context) {
    final _args = ModalRoute.of(context)!.settings.arguments as MovieDetailPage;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Image Poster
            Hero(
              tag: _args.heroId!,
              child: ExtendedImage.network(
                '${IMAGE_BASE_URL_400 + _args.imagePath!}',
                cache: true,
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                shape: BoxShape.rectangle,
              ),
            ),

            /// Movie Details
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Consumer(
                builder: (context, watch, skeleton) {
                  final state =
                      watch(movieDetailFutureProvider.call(_args.movieId!));

                  return state.when(
                    data: (MovieDetail data) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// Title & Rating Score
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            /// Movie Title
                            Flexible(
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  data.title!,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline5!
                                      .copyWith(fontWeight: FontWeight.w700),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                              ),
                            ),
                            SizedBox(width: 10),

                            /// Movie Score
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    CupertinoIcons.star_fill,
                                    color: Colors.amber,
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    '${data.ratingScore!}',
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),

                        /// Runtime & Votes
                        Row(
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 7),
                              margin: const EdgeInsets.only(right: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.white,
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    CupertinoIcons.time,
                                    color: Colors.blueAccent,
                                    size: 20,
                                  ),
                                  SizedBox(width: 4),
                                  Text('${data.runtime} minutes'),
                                ],
                              ),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 7),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.white,
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    CupertinoIcons.tickets,
                                    color: Colors.blueAccent,
                                    size: 20,
                                  ),
                                  SizedBox(width: 4),
                                  Text('${data.numbersVote!} votes'),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 8),

                        /// Genres
                        Wrap(
                          children: List.generate(
                            data.genres!.length,
                            (index) {
                              final _data = data.genres![index];
                              return Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 7),
                                margin: const EdgeInsets.only(
                                  right: 4,
                                  bottom: 4,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Text('${_data.name!}'),
                              );
                            },
                          ).toList(),
                        ),
                        SizedBox(height: 30),

                        ///Description Title
                        Text(
                          'Description',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        SizedBox(height: 10),

                        /// Description body
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          child: Text(
                            '${data.overview}',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ),
                      ],
                    ),
                    loading: () => skeleton!,
                    error: (e, _) {
                      if (e is DioException) {
                        return ErrorPlaceholder(
                          message: e.message!,
                          onError: () => context.refresh(
                              movieDetailFutureProvider.call(_args.movieId!)),
                        );
                      }
                      return ErrorPlaceholder(
                        message: 'Sorry, Unexpected things happened!',
                        onError: () =>
                            context.refresh(moviesProvider).fetchMovies(),
                      );
                    },
                  );
                },
                child: ShimmerGrid(),
              ),
            ),

            /// CAST
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///Cast Title
                  Text(
                    'Casts',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(height: 10),

                  /// Cast & Crew
                  Consumer(
                    builder: (context, watch, child) {
                      final state =
                          watch(movieCastFutureProvider.call(_args.movieId!));
                      return state.when(
                        data: (MovieCasts data) => SingleChildScrollView(
                          physics: AlwaysScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: List.generate(
                              data.cast!.length > 5 ? 5 : data.cast!.length,
                              (index) {
                                final _cast = data.cast![index];
                                return _cast.picture != null
                                    ? Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: Column(
                                          children: [
                                            Stack(
                                              children: [
                                                ExtendedImage.network(
                                                  '${IMAGE_BASE_URL_200 + _cast.picture!}',
                                                  height: 150,
                                                  width: 100,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  fit: BoxFit.cover,
                                                  shape: BoxShape.rectangle,
                                                ),

                                                /// GRADIENT
                                                Container(
                                                  height: 150,
                                                  width: 100,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    gradient: LinearGradient(
                                                      begin: Alignment
                                                          .bottomCenter,
                                                      end: Alignment.center,
                                                      colors: [
                                                        Colors.black54,
                                                        Colors.transparent,
                                                      ],
                                                    ),
                                                  ),
                                                ),

                                                /// TITLE
                                                Positioned(
                                                  bottom: 4,
                                                  right: 8,
                                                  left: 8,
                                                  child: Text(
                                                    '${_cast.name}',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .caption!
                                                        .copyWith(
                                                            color:
                                                                Colors.white),
                                                    textAlign: TextAlign.center,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    maxLines: 2,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              'as\n${_cast.character}',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .caption!
                                                  .copyWith(
                                                      color: Colors.black87),
                                              textAlign: TextAlign.center,
                                              overflow: TextOverflow.ellipsis,
                                              softWrap: true,
                                              maxLines: 2,
                                            ),
                                          ],
                                        ),
                                      )
                                    : SizedBox();
                              },
                            ),
                          ),
                        ),
                        loading: () => CupertinoActivityIndicator(),
                        error: (e, _) {
                          if (e is DioException) {
                            return ErrorPlaceholder(
                              message: e.message!,
                              onError: () => context.refresh(
                                  movieDetailFutureProvider
                                      .call(_args.movieId!)),
                            );
                          }
                          return ErrorPlaceholder(
                            message: 'Sorry, Unexpected things happened!',
                            onError: () =>
                                context.refresh(moviesProvider).fetchMovies(),
                          );
                        },
                      );
                    },
                    child: SizedBox(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
