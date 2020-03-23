import 'dart:async';
import 'package:flutter/foundation.dart';

class DBManager with ChangeNotifier {
  // Transform DBManager to singleton class.
  DBManager._internal();
  static final DBManager _dbManager = DBManager._internal();
  factory DBManager() => _dbManager;

  // constant class properties
  final tblMovie = 'movie';
  final colTitle = 'title';
  final colDesc = 'description';
  final colActor = 'actor';
}
