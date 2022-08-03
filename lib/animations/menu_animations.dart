import 'package:animations_beginner/animations/animated_positioned.dart';
import 'package:animations_beginner/animations/carousel_page.dart';
import 'package:animations_beginner/animations/swipe_card.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {

  void _goToAnimatedPositioned(){
    Navigator.pushNamed(context, AnimatedPositionedWidget.id);
  }

  void _goToSwipeCard(){
    Navigator.pushNamed(context, CardSwipe.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ElevatedButton(
              onPressed: _goToAnimatedPositioned,
              child: const Text("Animated Positioned")),
          ElevatedButton(
              onPressed: _goToSwipeCard,
              child: const Text("Card Swipe")),


        ],
      ),
    );
  }
}
