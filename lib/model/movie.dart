class Movie {
  // class properties
  int _id;
  String _title;
  String _actor;
  String _desc;
  String _releasedYear;

  // Constructor
  Movie(this._id, this._title, this._actor, this._releasedYear, [this._desc]);

  // getters
  int get id => _id;
  String get title => _title;
  String get actor => _actor;
  String get description => _desc;
  String get releasedYear => _releasedYear;

  // setters
  set title(String newTitle) {
    if (newTitle.length <= 255) {
      _title = newTitle;
    }
  }

  set actor(String newActor) {
    if (newActor.length <= 255) {
      _actor = newActor;
    }
  }
}
