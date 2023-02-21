import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedConatiner extends StatefulWidget {
  const AnimatedConatiner({Key? key}) : super(key: key);
  @override
  State<AnimatedConatiner> createState() => _AnimatedConatinerState();
}
class _AnimatedConatinerState extends State<AnimatedConatiner> {
  double _width = 200;
  double _hight = 200;
  Color color = Colors.green;
  BorderRadiusGeometry _borderradius = BorderRadius.circular(8);
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Animated'),
          centerTitle: true,
        ),
        body: Center(
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            height: _width,
            width: _hight,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: color,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.play_arrow),
          onPressed: () {
            setState(() {
              Random random = Random();
              random.nextInt(100);
              _width = random.nextInt(100).toDouble();
              _hight = random.nextInt(100).toDouble();
              color = Color.fromARGB(random.nextInt(256), random.nextInt(256),
                  random.nextInt(256), random.nextInt(256));
              _borderradius =
                  BorderRadius.circular(random.nextInt(100).toDouble());
              // _width = _width ==50 ? 100 : 50;
              // _hight = _hight ==50 ? 100 : 50;
              // color = color ==Colors.green ?  Colors.black : Colors.green;
              // _borderradius = _borderradius ==BorderRadius.circular(8) ?  BorderRadius.circular(30) : BorderRadius.circular(8);
            });
          },
        ),
      ),
    );
  }
}
