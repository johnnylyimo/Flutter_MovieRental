import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:movierental/model/movie.dart';
import 'package:movierental/model/db_manager.dart';
import 'dart:async';
import 'package:movierental/screens/add_movie.dart';

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
        child: Container(
          child: ListView.builder(
            itemCount: movies.length ?? 0,
            itemBuilder: (context, index) {
              return Card(
                elevation: 6.0,
                shape: StadiumBorder(),
                child: ListTile(
                  leading: Icon(Icons.movie),
                  title: Text(movies[index].title),
                  subtitle: Text((movies[index].actor)),
                  trailing: Text((movies[index].releasedYear.toString())),
                ),
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddMovie()),
          );
        },
      ),
    );
  }
}
