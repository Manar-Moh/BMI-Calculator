import 'package:flutter/material.dart';

import 'InputPage.dart';
import 'package:splashscreen/splashscreen.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.pink[900],
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 15,
      navigateAfterSeconds: new InputPage(),
      title: new Text(
        'BMI-Calculator',
        style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0),
      ),
      backgroundColor: Color(0xFF1D1E33),
      image: Image.asset('images/im.png'),
      photoSize: 80.0,
      styleTextUnderTheLoader: new TextStyle(),
      loadingText: Text('Loading'),
      loaderColor: Color(0xFF880E4F),
    );
  }
}
