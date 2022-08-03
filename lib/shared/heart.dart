import 'package:flutter/material.dart';

class Heart extends StatefulWidget {
  const Heart({Key? key}) : super(key: key);

  @override
  State<Heart> createState() => _HeartState();
}

class _HeartState extends State<Heart> with SingleTickerProviderStateMixin{
  bool isFavorite = false;
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;
  late Animation<double?> _sizeAnimation;
  late var _curve;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this,duration: const Duration(milliseconds: 500));
    _curve = CurvedAnimation(
        parent: _controller,
        curve: Curves.slowMiddle
    );
    _colorAnimation = ColorTween(begin: Colors.grey.shade400,end: Colors.red).animate(_curve);

    _sizeAnimation = TweenSequence(
        <TweenSequenceItem<double>>[
          TweenSequenceItem<double>(
            tween: Tween<double>(begin: 30, end: 50),
            weight: 50,
          ),
          TweenSequenceItem<double>(
            tween: Tween<double>(begin: 50, end: 30),
            weight: 50,
          ),
        ]
    ).animate(_curve);

    _controller.addListener(() {
      print(_colorAnimation.value);

    });
    
    _controller.addStatusListener((status) {
      if(status == AnimationStatus.completed){
        setState(() {
          isFavorite = true;
        });
      }

      if(status == AnimationStatus.dismissed){
        setState(() {
          isFavorite = false;
        });
      }

    });
    
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (BuildContext context,_){
        return IconButton(
            icon: Icon(
              Icons.favorite,
              color: _colorAnimation.value,
              size: _sizeAnimation.value,),
          onPressed: (){
           isFavorite ? _controller.reverse() : _controller.forward();
          },
        );
      },
    );
  }
}
