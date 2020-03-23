import 'package:flutter/material.dart';

class AddMovie extends StatefulWidget {
  @override
  _AddMovieState createState() => _AddMovieState();
}

class _AddMovieState extends State<AddMovie> {
  // capture input from TextField
  var titleController = TextEditingController();
  var actorController = TextEditingController();
  var descController = TextEditingController();
  var releasedYearController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Add new Movie'),
      ),
    );
  }
}
