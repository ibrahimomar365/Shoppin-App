
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

Widget carousel= new Container(
  
  height: 270.0,
  child: new Carousel(
    boxFit: BoxFit.cover,
    images:[
      Image.asset('images/c1.jpg'),
       Image.asset('images/w1.jpeg'),
        Image.asset('images/m1.jpeg'),
       Image.asset('images/m2.jpg'),
    ],
    autoplay: true,
   animationCurve: Curves.fastOutSlowIn,
    animationDuration: Duration(microseconds: 1000),
    dotColor: Colors.red,
  ),

);

