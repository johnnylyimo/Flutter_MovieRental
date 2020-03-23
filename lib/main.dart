import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'package:provider/provider.dart';
import 'package:movierental/model/db_manager.dart';
import 'screens/add_movie.dart';

void main() {
  runApp(MovieRental());
}

class MovieRental extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => DBManager(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'MovieRental App',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: AddMovie()),
    );
  }
}
