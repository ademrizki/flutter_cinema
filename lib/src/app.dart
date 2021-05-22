import 'package:flutter/material.dart';
import 'package:flutter_cinema/src/view/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _appBarTextTheme = Theme.of(context).textTheme.apply(
          // fontFamily: 'Poppins',
          bodyColor: Colors.black87,
        );

    return MaterialApp(
      title: 'Flutter Cinema',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
          textTheme: _appBarTextTheme,
        ),
        scaffoldBackgroundColor: Colors.grey[200],
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
