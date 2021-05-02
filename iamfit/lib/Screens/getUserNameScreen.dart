import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iamfit/Screens/HomeScreen.dart';
import 'package:iamfit/Themes/Coolors.dart';

class getUserName extends StatefulWidget {
  @override
  _getUserNameState createState() => _getUserNameState();
}

class _getUserNameState extends State<getUserName> {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        color: Coolors.primaryColor,

        child: Column(

          children:<Widget> [
            SizedBox(
              height: height/12,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Tell us about yourself",
              style: GoogleFonts.robotoSlab(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: height/19,
                ),
              ),
              ),
            ),
            SizedBox(
              height: height/14,
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: TextField(
                controller: nameController,
                keyboardType: TextInputType.name,

                decoration: InputDecoration(

                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(20.0),
                      ),
                    ),
                    filled: true,
                    hintStyle: TextStyle(

                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                    hintText: "Name",
                    fillColor: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: SizedBox(
                width: width/3,
                child: TextFormField(
                  textAlign: TextAlign.center,
                  controller: ageController,
                  keyboardType: TextInputType.number,

                  decoration: InputDecoration(



                      border: OutlineInputBorder(

                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(20.0),
                        ),
                      ),
                      filled: true,
                      hintStyle: TextStyle(


                          fontWeight: FontWeight.w500,
                          fontSize: 17),
                      hintText: "Age",
                      fillColor: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: height/30,
            ),
            SizedBox(
              height: height/20,
              width: width/3,
              child: ElevatedButton(onPressed: (){
                Navigator.of(context).pushReplacement(_createRoute());
              },
                child: Text("Submit",
                style: GoogleFonts.robotoSlab(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: height/40,
                  ),
                ),
              ),),
            ),
          ],
        ),

      ),
    );
  }
  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => HomeScreen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(0.0, 1.0);
        var end = Offset.zero;
        var curve = Curves.ease;

        var tween =
        Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}
