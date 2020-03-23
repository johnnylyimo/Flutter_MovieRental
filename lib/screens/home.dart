import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:movierental/model/movie.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Movies Library'),
      ),
      body: SafeArea(),
    );
  }
}
