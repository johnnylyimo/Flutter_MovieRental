import 'package:flutter/material.dart';
import 'screens/home.dart';

void main() {
  runApp(MovieRental());
}

class MovieRental extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MovieRental App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
