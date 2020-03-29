import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:movierental/model/movie.dart';
import 'package:movierental/model/db_manager.dart';
import 'dart:async';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Movie> movies;

  @override
  Widget build(BuildContext context) {
    final getDB = Provider.of<DBManager>(context);

    () async {
      List moviesList = await getDB.getMovies() ?? [];
      setState(() {
        movies = moviesList;
      });
    }();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Movies Library'),
      ),
      body: SafeArea(
        child: Container(),
      ),
      floatingActionButton: FloatingActionButton(),
    );
  }
}
