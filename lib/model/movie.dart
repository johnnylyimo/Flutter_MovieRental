class Movie {
  // class properties
  int _id;
  String _title;
  String _actor;
  String _desc;
  String releaseYear;

  // Constructor
  Movie(this._id, this._title, this._actor, this.releaseYear, [this._desc]);

  // getter
  int get id => _id;
  String get title => _title;
  String get actor => _actor;
  String get description => _desc;
}
