import 'package:flutter/material.dart';
import 'package:iamfit/Screens/HomeScreen.dart';
import 'package:iamfit/Screens/PedometerScreen.dart';
import 'package:iamfit/Screens/SplashScreen.dart';
import 'package:iamfit/Screens/getUserNameScreen.dart';
import 'package:iamfit/Themes/Coolors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.deepPurple,
      ),
      home:PedometerScreen(),
    );
  }
}
