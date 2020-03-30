import 'package:flutter/material.dart';
import 'package:movierental/model/db_manager.dart';
import 'package:movierental/model/movie.dart';
import 'package:movierental/screens/add_movie.dart';
import 'package:movierental/screens/movie_info.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Movie> movies;
//  DBManager getDB;
//  List moviesList;
//
//  getMovies() async {
//    moviesList = await getDB.getMovies() ?? [];
//    setState(() {
//      movies = moviesList;
//    });
//  }
//
//  @override
//  void initState() {
//    // TODO: implement initState
//    super.initState();
//    getMovies();
//  }

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
          child: FutureBuilder(
            future: getDB.getMovies(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
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
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MovieInfo(movies[index])),
                          );
                        },
                      ),
                    );
                  },
                );
              }
              return Center(
                child: CircularProgressIndicator(),
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
