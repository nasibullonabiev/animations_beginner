import 'package:flutter/material.dart';

class SandBox extends StatefulWidget {

  const SandBox({Key? key}) : super(key: key);

  @override
  State<SandBox> createState() => _SandBoxState();
}

class _SandBoxState extends State<SandBox> {

  double _opacity = 1;
  double _width= 200;
  Color _color = Colors.blue;
  double _margin = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        margin: EdgeInsets.all(_margin),
        width: _width,
        color: _color,
        duration: const Duration(milliseconds: 800),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            ElevatedButton(
                onPressed: () => setState(() {
               _margin = 50;
                }),

                child: const Text("animate margin")),
            ElevatedButton(
                onPressed: () => setState(() {
                  _color = Colors.pink;
                }),
                child: const Text("animate color")),

            ElevatedButton(
                onPressed: () => setState(() {
                  _width = 400;
                }),
                child: const Text("animate width")),

            ElevatedButton(
                onPressed: () => setState(() {
                  _opacity = 0;
                }),
                child: const Text("animate opacity")),

           AnimatedOpacity(opacity: _opacity,
               duration: const Duration(seconds: 2),
           child: const Text("hide me",style: TextStyle(color: Colors.white ),),
           )


          ],
        ),

      ),

    );
  }
}
