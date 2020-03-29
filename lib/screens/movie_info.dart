import 'package:flutter/material.dart';
import 'package:movierental/model/db_manager.dart';
import 'package:movierental/model/movie.dart';

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
  var releasedYearController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // filled values to Form input field
    titleController.text = widget.movie.title;
    actorController.text = widget.movie.actor;
    descController.text = widget.movie.description;
    releasedYearController.text = widget.movie.releasedYear.toString();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.movie.title),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10.0,
                  ),
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
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    controller: actorController,
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
                        val.isEmpty ? 'Please enter Movie Actor(s)' : null,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.multiline,
                    controller: descController,
                    decoration: InputDecoration(
                      labelText: 'Movie Description',
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
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    controller: releasedYearController,
                    decoration: InputDecoration(
                      labelText: 'Movie Release Year',
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
                        val.isEmpty ? 'Please enter Movie released year' : null,
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    children: <Widget>[
                      RaisedButton(
                        color: Colors.blue,
                        child: Text('Add'),
                        shape: StadiumBorder(),
                        onPressed: () {},
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
