import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
class Curves_Animated extends StatefulWidget {
  const Curves_Animated({Key? key}) : super(key: key);

  @override
  State<Curves_Animated> createState() => _Curves_AnimatedState();
}

class _Curves_AnimatedState extends State<Curves_Animated> {
  @override
  double _width = 200;
  double _hight = 200;
  bool visible = true;
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
          child: AnimatedOpacity(
            opacity: visible == true ? 1 : 0,
            duration: Duration(seconds: 1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedContainer(
                  curve: Curves.linear,
                  duration: Duration(seconds: 1),
                  height: _width,
                  width: _hight,
                  decoration: BoxDecoration(
                    borderRadius: _borderradius,
                    color: color,
                  ),
                ),
                Text(
                  'Nasser Yazgi',
                  style: TextStyle(fontSize: 30),
                ),
                Text('Palestine', style: TextStyle(fontSize: 25)),
              ],
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
              visible = !visible;
              // double opacity = visible ==true? 1 : 0;
              _hight = random.nextInt(100).toDouble();
              // color = Color.fromRGBO(random.nextInt(256), random.nextInt(256),
              //     random.nextInt(256), opacity);
              _borderradius =
                  BorderRadius.circular(random.nextInt(100).toDouble());
            });
          },
        ),
      ),
    );
  }
}
