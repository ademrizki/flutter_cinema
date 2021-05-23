import 'package:extended_image/extended_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cinema/src/model/movies/movies.dart';
import 'package:flutter_cinema/src/provider/provider.dart';
import 'package:flutter_cinema/src/utils/constants/constant_url.dart';
import 'package:flutter_cinema/src/utils/exception/dio_exceptions.dart';
import 'package:flutter_cinema/src/view/movie_detail_page.dart';
import 'package:flutter_cinema/src/view/widget/error_placeholder.dart';
import 'package:flutter_cinema/src/view/widget/shimmer_grid.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends StatelessWidget {
  static const String route = '/homePage';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _provider = context.read(moviesProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(
              CupertinoIcons.film,
              color: Colors.black87,
            ),
            SizedBox(width: 10),
            Text('Flutter Cinema'),
          ],
        ),
      ),
      body: RefreshIndicator(
        onRefresh: () => context.refresh(moviesProvider).fetchMovies(),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            children: [
              /// SEARCH FIELD
              TextField(
                controller: _provider.searchController,
                decoration: InputDecoration(
                  hintText: 'Search',
                  filled: true,
                  fillColor: Colors.white,
                  isDense: true,
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 14,
                    horizontal: 10,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  prefixIcon: Icon(CupertinoIcons.search),
                ),
                textInputAction: TextInputAction.search,
                onChanged: (value) =>
                    _provider.fetchMoviesFromSearch(query: value),
              ),
              const SizedBox(height: 20),

              /// MOVIE SECTION CONTROLLER
              SizedBox(
                width: double.infinity,
                child: ValueListenableBuilder(
                  valueListenable: _provider.selectedMovieSection,
                  builder: (context, String value, child) =>
                      CupertinoSlidingSegmentedControl<String>(
                    children: _provider.movieSections,
                    groupValue: value,
                    onValueChanged: (String? value) {
                      _provider.selectedMovieSection.value = value!;
                      _provider.fetchMovies();
                    },
                  ),
                ),
              ),
              const SizedBox(height: 20),

              /// MOVIE LIST
              Expanded(
                child: NotificationListener<ScrollNotification>(
                  onNotification: _provider.fnOnPagination,
                  child: ListView(
                    shrinkWrap: true,
                    padding: const EdgeInsets.only(bottom: 20),
                    physics: const AlwaysScrollableScrollPhysics(),
                    children: [
                      /// MOVIES
                      Consumer(
                        builder: (context, watch, Widget? child) {
                          final state = watch(moviesProvider);
                          return state.when(
                            initial: () => child!,
                            loading: () => child!,
                            success: (Movies data) => GridView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: data.data?.length ?? 0,
                              shrinkWrap: true,
                              padding: const EdgeInsets.only(bottom: 20),
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 0.7,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                              ),
                              itemBuilder: (context, index) {
                                final _data = data.data![index];
                                return _data.posterPath != null
                                    ? GestureDetector(
                                        onTap: () => Navigator.pushNamed(
                                          context,
                                          '/movieDetailPage',
                                          arguments: MovieDetailPage(
                                            heroId: index,
                                            imagePath: _data.posterPath!,
                                            movieId: _data.id,
                                          ),
                                        ),
                                        child: Hero(
                                          tag: index,
                                          child: Stack(
                                            fit: StackFit.expand,
                                            children: [
                                              /// IMAGE
                                              ExtendedImage.network(
                                                IMAGE_BASE_URL_200 +
                                                    _data.posterPath!,
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                shape: BoxShape.rectangle,
                                                cache: true,
                                                fit: BoxFit.cover,
                                              ),

                                              /// GRADIENT
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  gradient: LinearGradient(
                                                    begin:
                                                        Alignment.bottomCenter,
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
                                                bottom: 10,
                                                right: 8,
                                                left: 8,
                                                child: Text(
                                                  '${_data.title}',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText2!
                                                      .copyWith(
                                                          color: Colors.white),
                                                  textAlign: TextAlign.center,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  maxLines: 2,
                                                ),
                                              ),

                                              /// RATING
                                              Positioned(
                                                top: 10,
                                                right: 10,
                                                child: Container(
                                                  padding: const EdgeInsets
                                                      .symmetric(horizontal: 4),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4),
                                                    color: Colors.white
                                                        .withOpacity(0.4),
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        CupertinoIcons
                                                            .star_fill,
                                                        color: Colors.amber,
                                                        size: 18,
                                                      ),
                                                      SizedBox(width: 4),
                                                      Text(
                                                        '${_data.ratingScore}',
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodyText2!
                                                            .copyWith(
                                                                color: Colors
                                                                    .white),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    : Icon(
                                        CupertinoIcons.info_circle,
                                        color: Colors.red,
                                      );
                              },
                            ),
                            fail: (e, message) {
                              if (e is DioException) {
                                return ErrorPlaceholder(
                                  message: e.message!,
                                  onError: () => context
                                      .refresh(moviesProvider)
                                      .fetchMovies(),
                                );
                              }
                              return ErrorPlaceholder(
                                message: 'Sorry, Unexpected things happened!',
                                onError: () => context
                                    .refresh(moviesProvider)
                                    .fetchMovies(),
                              );
                            },
                          );
                        },
                        child: ShimmerGrid(),
                      ),

                      /// PAGINATION INDICATOR
                      ValueListenableBuilder(
                        valueListenable: _provider.isLoading,
                        builder: (context, bool value, child) => Visibility(
                          visible: value,
                          child: CupertinoActivityIndicator(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
