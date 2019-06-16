import 'package:flutter/material.dart';
import 'dart:math';

class ColorState extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ColorState();
  }
}

class _ColorState extends State<ColorState> {
  //List<Color> colorsDisplayed = [Colors.red, Colors.blue, Colors.green];
  List<MaterialColor> colorsDisplayed = const <MaterialColor>[Colors.red, Colors.pink, Colors.purple, Colors.deepPurple, Colors.indigo, Colors.blue, Colors.lightBlue, Colors.cyan, Colors.teal, Colors.green, Colors.lightGreen, Colors.lime, Colors.yellow, Colors.amber, Colors.orange, Colors.deepOrange, Colors.brown, Colors.blueGrey];
  Color showColor;
  int i = 0;
  int maxSize = 18;
  @override
  void initState() {
    super.initState();
    showColor = Colors.red;
  }

 changeColor() {
    setState(() {
      print("set state running");
      var rng = new Random();
      i = rng.nextInt(maxSize);
    
      showColor = colorsDisplayed[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    print("build running");
    return MaterialApp(
      home: Scaffold(
          body: Container(color: showColor),
          floatingActionButton: FloatingActionButton(
            onPressed: (){changeColor();},
            tooltip: 'Change Color',
            child: Icon(Icons.colorize),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat),
    );
  }
}
