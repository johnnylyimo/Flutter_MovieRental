import 'package:flutter/material.dart';
import 'package:movierental/model/movie.dart';

class MovieInfo extends StatefulWidget {
  final Movie movie;
  MovieInfo(this.movie);

  @override
  _MovieInfoState createState() => _MovieInfoState();
}

class _MovieInfoState extends State<MovieInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
