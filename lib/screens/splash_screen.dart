import 'package:flutter/material.dart';
import 'package:movierental/screens/home.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Future.delayed(Duration(seconds: 3), () {
    //   Navigator.pushReplacement(
    //     context,
    //     MaterialPageRoute(builder: (context) => HomePage()),
    //   );
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Welcome',
            style: TextStyle(fontSize: 24.0),
          ),
          FlutterLogo(
            size: 300.0,
          ),
          Text(
            'Movie Rental App',
            style: TextStyle(fontSize: 24.0),
          )
        ],
      ),
    );
  }
}
