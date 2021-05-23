import 'package:flutter/material.dart';
import 'package:flutter_cinema/src/view/home_page.dart';
import 'package:flutter_cinema/src/view/movie_detail_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _appBarTextTheme = Theme.of(context).textTheme.apply(
          bodyColor: Colors.black87,
          fontFamily: 'Nunito',
        );

    return MaterialApp(
      title: 'Flutter Cinema',
      theme: ThemeData(
        fontFamily: 'Poppins',
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
          textTheme: _appBarTextTheme,
        ),
        scaffoldBackgroundColor: Colors.grey[200],
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.route,
      routes: {
        HomePage.route: (context) => HomePage(),
        MovieDetailPage.route: (context) => MovieDetailPage(),
      },
    );
  }
}
