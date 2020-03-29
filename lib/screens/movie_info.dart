import 'package:flutter/material.dart';
import 'package:movierental/model/movie.dart';

class MovieInfo extends StatefulWidget {
  @override
  _MovieInfoState createState() => _MovieInfoState();

  final Movie movie;
}

class _MovieInfoState extends State<MovieInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
