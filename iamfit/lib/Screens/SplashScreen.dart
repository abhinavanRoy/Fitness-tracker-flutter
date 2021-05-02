import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';


import 'package:google_fonts/google_fonts.dart';
import 'package:iamfit/Screens/getUserNameScreen.dart';
import 'package:iamfit/Themes/Coolors.dart';

import 'HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer ( Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                getUserName()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
          height: height,
          width: width,
          color: Coolors.primaryColor,
          child: Center(
            child: SizedBox(
              width: 250.0,
              child: DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      blurRadius: 7.0,
                      color: Colors.white,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: Center(
                  child: AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      FlickerAnimatedText('I AM FIT',
                        textStyle: TextStyle(
                            fontSize: 30
                        ),),


                    ],
                    isRepeatingAnimation: false,
                  ),
                ),
              ),
            ),
          )
      ),
    );
  }
}
