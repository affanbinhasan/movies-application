import 'package:flutter/material.dart';
import 'package:movies_application/page/home_page.dart';
import 'package:movies_application/page/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  static final String title = 'Movie Watchlist';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        home: LoginPage(),
      );
}
