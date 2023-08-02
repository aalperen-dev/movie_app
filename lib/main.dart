import 'package:flutter/material.dart';

import '../screens/movie_detail.dart';
import '../screens/dashboard_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const DasboardScreen(),
      routes: {MovieDetails.routeName: (context) => const MovieDetails()},
    );
  }
}
