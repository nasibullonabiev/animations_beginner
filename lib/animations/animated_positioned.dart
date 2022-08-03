import 'package:flutter/material.dart';

class AnimatedPositionedWidget extends StatefulWidget {

  static const String id = 'animated_positioned';
  
  const AnimatedPositionedWidget({Key? key}) : super(key: key);


  @override
  State<AnimatedPositionedWidget> createState() =>
      _AnimatedPositionedWidgetState();
}

class _AnimatedPositionedWidgetState extends State<AnimatedPositionedWidget> {
  double _pos1 = 0;
  double _postionRight = 0;
  double _positionLeft = 0;
  double _postionTop = 0;
  double _positionBottom = 0;

  void _move(String pos) {
    setState(() {
      if (pos == "Up") {
        _positionLeft = 0;
        _postionRight = 0;
        _postionTop = 0;
        _positionBottom = 100;
      }
      else if (pos == "Right") {
        _positionLeft = 100;
        _postionRight = 0;
        _postionTop = 0;
        _positionBottom = 0;
      } else if (pos == "Down") {
        _positionLeft = 0;
        _postionRight = 0;
        _postionTop = 100;
        _positionBottom = 0;
      } else if (pos == "Left") {
        _positionLeft = 0;
        _postionRight = 100;
        _postionTop = 0;
        _positionBottom = 0;
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Stack(
            children: [
            AnimatedPositioned(
            left: _positionLeft,
            right: _postionRight,
            top: _postionTop,
            bottom: _positionBottom,
            duration: Duration(milliseconds: 500),
            child: Center(
                child: Container(
                  color: Colors.red,
                  width: 100.0,
                  height: 100.0,
                )
            )),


              Positioned(
                  bottom: 100,
                  left: 160,
                  child: ElevatedButton(
                    child: const Text("Up"),
                    onPressed: (){
                      _move("Up");
                    },
                  )
              ),
              Positioned(
                  bottom: 60,
                  left: 260,
                  child: ElevatedButton(
                    child: const Text("Right"),
                    onPressed: (){
                      _move("Right");
                    },
                  )
              ),
              Positioned(
                  bottom: 10,
                  left: 160,
                  child: ElevatedButton(
                    child: const Text("Down"),
                    onPressed: (){
                      _move("Down");
                    },
                  )
              ),
              Positioned(
                  bottom: 60,
                  left: 60,
                  child: ElevatedButton(
                    child: const Text("Left"),
                    onPressed: (){
                      _move("Left");
                    },
                  )
              ),

            ],
          ),
        ),
      ),
    );
  }
}
