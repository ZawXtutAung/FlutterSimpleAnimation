import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: MainActivity(),
      ),
    );
  }
}

class MainActivity extends StatefulWidget {
  const MainActivity({
    Key key,
  }) : super(key: key);

  @override
  _MainActivityState createState() => _MainActivityState();
}

class _MainActivityState extends State<MainActivity>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation<double> animation;
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    animation = Tween<double>(begin: 0.0, end: pi).animate(animationController);
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: AnimatedBuilder(
          animation: animationController,
          builder: (context, child) => Transform.rotate(
            angle: animation.value,
            child: InkWell(
              onTap: () {
                if (animationController.isCompleted) {
                  animationController.reverse();
                } else {
                  animationController.forward();
                }
              },
              child: Container(
                width: 100,
                height: 100,
                color: Colors.cyanAccent,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
