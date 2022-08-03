import 'package:animations_beginner/animations/animated_positioned.dart';
import 'package:animations_beginner/animations/carousel_page.dart';
import 'package:animations_beginner/animations/menu_animations.dart';
import 'package:animations_beginner/animations/spring_physics.dart';
import 'package:animations_beginner/animations/swipe_card.dart';
import 'package:animations_beginner/pages/for_learn.dart';
import 'package:animations_beginner/pages/home_page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Menu(),
      routes: {
        AnimatedPositionedWidget.id : (context) => AnimatedPositionedWidget(),
        CardSwipe.id : (context) => CardSwipe(),

      },

    );
  }
}
