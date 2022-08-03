import 'package:flutter/material.dart';

import '../shared/screen_title.dart';
import '../shared/trip_list.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.all(20),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bg.png"),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topLeft
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  <Widget>[
                SizedBox(height: 30),
                const SizedBox(
                  height: 160,
                  child: ScreenTitle(text: 'Trips'),
                ),
                Flexible(child: TripList())
                //Sandbox(),
              ],
            )
        )
    );
  }
}

