import 'package:extended_image/extended_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cinema/src/model/movies/movies.dart';
import 'package:flutter_cinema/src/provider/provider.dart';
import 'package:flutter_cinema/src/utils/constants/constant_url.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends StatelessWidget {
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
              // TextField(
              //   controller: _provider.searchController,
              //   decoration: InputDecoration(
              //     hintText: 'Search',
              //     filled: true,
              //     fillColor: Colors.white,
              //     isDense: true,
              //     contentPadding: const EdgeInsets.symmetric(
              //       vertical: 14,
              //       horizontal: 10,
              //     ),
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(8),
              //       borderSide: BorderSide(
              //         width: 0,
              //         style: BorderStyle.none,
              //       ),
              //     ),
              //     prefixIcon: Icon(CupertinoIcons.search),
              //   ),
              //   textInputAction: TextInputAction.search,
              // ),
              // const SizedBox(height: 20),

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
                    physics: AlwaysScrollableScrollPhysics(),
                    children: [
                      /// MOVIES
                      Consumer(
                        builder: (context, watch, Widget? child) {
                          final state = watch(moviesProvider);
                          return state.when(
                            initial: () => child!,
                            loading: () => CupertinoActivityIndicator(),
                            success: (Movies data) => GridView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: data.data?.length ?? 0,
                              shrinkWrap: true,
                              padding: const EdgeInsets.only(bottom: 10),
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
                                    ? ExtendedImage.network(
                                        IMAGE_BASE_URL_200 + _data.posterPath!,
                                        borderRadius: BorderRadius.circular(20),
                                        shape: BoxShape.rectangle,
                                        cache: true,
                                        fit: BoxFit.cover,
                                      )
                                    : Icon(
                                        CupertinoIcons.info_circle,
                                        color: Colors.red,
                                      );
                              },
                            ),
                            fail: (message) =>
                                Text('Oops, unexpected things happen!'),
                          );
                        },
                        child: SizedBox(),
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
