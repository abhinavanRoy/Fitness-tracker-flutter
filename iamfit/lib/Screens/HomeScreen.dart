import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iamfit/Screens/CarouselVideos.dart';
import 'package:iamfit/Themes/Coolors.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
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
      body: Container(
        height: height,
        width: width,
        color: Coolors.primaryColor,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: height / 30,
            ),
            Text(
              'See our latest Fitness videos',
              style: GoogleFonts.robotoSlab(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 23.0,
                ),
              ),
            ),
            SizedBox(
              height: height / 30,
            ),
            SizedBox(height: height / 4, child: CarouselVideos(),),
            SizedBox(
              height: height / 5,
            ),
            ElevatedButton(onPressed: (){}, child:Text(
              'Count Your Steps',
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 23.0,
                ),
              ),
            ), )

          ],
        ),
      ),
    );



  }

}
