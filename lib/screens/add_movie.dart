import 'package:flutter/material.dart';
import 'package:movierental/model/db_manager.dart';
import 'package:provider/provider.dart';

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
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final getDB = Provider.of<DBManager>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Add new Movie'),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: titleController,
                decoration: InputDecoration(
                  labelText: 'Movie Title',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue.shade200,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                validator: (val) =>
                    val.isEmpty ? 'Please enter Movie Title' : null,
              ),
              TextFormField(
                controller: titleController,
                decoration: InputDecoration(
                  labelText: 'Movie Actor(s)',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue.shade200,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                validator: (val) =>
                    val.isEmpty ? 'Please enter Movie Title' : null,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
