import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MovieRental());
}

class MovieRental extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MovieRental App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage());
  }
}
