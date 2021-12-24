import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cinema/src/view/home_page.dart';
import 'package:flutter_cinema/src/view/movie_detail_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Cinema',
      theme: ThemeData(
        fontFamily: 'Poppins',
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.black87,
            fontFamily: 'Nunito',
          ),
        ),
        scaffoldBackgroundColor: Colors.grey[200],
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: kReleaseMode ? false : true,
      initialRoute: HomePage.route,
      routes: {
        HomePage.route: (context) => HomePage(),
        MovieDetailPage.route: (context) => MovieDetailPage(),
      },
    );
  }
}
