import 'package:flutter/material.dart';
import 'package:movierental/model/movie.dart';
import 'package:movierental/model/db_manager.dart';

class MovieInfo extends StatefulWidget {
  final Movie movie;
  MovieInfo(this.movie);

  @override
  _MovieInfoState createState() => _MovieInfoState();
}

class _MovieInfoState extends State<MovieInfo> {
  final DBManager getDB = DBManager();

  // capture input from TextField
  var titleController = TextEditingController();
  var actorController = TextEditingController();
  var descController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
