
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:youtube_player_flutter/youtube_player_flutter.dart';


YoutubePlayerController _controller1 = YoutubePlayerController(

  initialVideoId: "ml6cT4AZdqI",
  flags: YoutubePlayerFlags(
    disableDragSeek: false,
    autoPlay: true,
    mute: true,
  ),
);
YoutubePlayerController _controller2 = YoutubePlayerController(

  initialVideoId: "cZnsLVArIt8",
  flags: YoutubePlayerFlags(
    disableDragSeek: false,
    autoPlay: true,
    mute: true,
  ),
);
YoutubePlayerController _controller3 = YoutubePlayerController(

  initialVideoId: "mGvzVjuY8SY",
  flags: YoutubePlayerFlags(
    disableDragSeek: false,
    autoPlay: true,
    mute: true,
  ),
);
YoutubePlayerController _controller4 = YoutubePlayerController(

  initialVideoId: "awK_Sva650I",
  flags: YoutubePlayerFlags(
    disableDragSeek: false,
    autoPlay: true,
    mute: true,
  ),
);

class CarouselVideos extends StatefulWidget {
  @override
  _CarouselVideosState createState() => _CarouselVideosState();
}

class _CarouselVideosState extends State<CarouselVideos> {


  CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children:<Widget> [
        CarouselSlider(
          carouselController: buttonCarouselController,
          options: CarouselOptions(
            viewportFraction: 0.9,
            initialPage: 0,
            height: height /4,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 4),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
          ),
          items: [0, 1, 2, 3].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return myWidget[i];
              },
            );
          }).toList(),
        ),


      ],
    );

  }

  List<Widget> myWidget= [
    YoutubePlayer(controller: _controller1),
    YoutubePlayer(controller: _controller2),
    YoutubePlayer(controller: _controller3),
    YoutubePlayer(controller: _controller4),

  ];



}
