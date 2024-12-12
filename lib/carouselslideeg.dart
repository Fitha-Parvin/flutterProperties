import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class carousel extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Container(
      child: CarouselSlider(items:
      const [
        Image(image: AssetImage("assets/images/bg.jpg")) ,
        Image(image: AssetImage("assets/images/bg1.jpg")) ,
        Image(image: AssetImage("assets/images/bg2.jpg")) ,

      ], options: CarouselOptions(
        autoPlay: true,
        aspectRatio: 2.0,
          enlargeCenterPage: true
      ),
      )
    ),
  );
  }
}