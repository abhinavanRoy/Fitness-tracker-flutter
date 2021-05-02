

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iamfit/Themes/Coolors.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Coolors.secondaryColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Coolors.primaryColor,
        title: Text(
          'I am Fit',
          style: GoogleFonts.pacifico(
            textStyle: TextStyle(
              fontSize: 26.0,
            ),
          ),
        ),
      ),
    );
  }
}
