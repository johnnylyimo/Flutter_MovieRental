import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:movierental/model/movie.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBManager with ChangeNotifier {
  // Transform DBManager to singleton class.
  DBManager._internal();
  static final DBManager _dbManager = DBManager._internal();
  factory DBManager() => _dbManager;

  // constant class properties
  final tblMovie = 'movie';
  final colId = 'id';
  final colTitle = 'title';
  final colDesc = 'description';
  final colActor = 'actor';
  final colReleasedYear = 'releasedYear';

  Database db;

  Future<Database> initializeDB() async {
    if (db == null) {
      db = await openDatabase(join(await getDatabasesPath(), "movie.db"),
          version: 1, onCreate: (db, int version) {
        return db.execute(
            "CREATE TABLE $tblMovie($colId INTEGER PRIMARY KEY, $colTitle TEXT, $colDesc TEXT, $colActor TEXT, $colReleasedYear INTEGER)");
      });
    }
    return db;
  }

  // insert data into DB
  Future<int> addMovie(Movie movie) async {
    await initializeDB();
  }
}
