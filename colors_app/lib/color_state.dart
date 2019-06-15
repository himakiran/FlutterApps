import 'package:flutter/material.dart';

class ColorState extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ColorState();
  }
}

class _ColorState extends State<ColorState> {
  List<Color> colorsDisplayed = [Colors.red, Colors.blue, Colors.green];
  Color showColor;
  int i = 0;
  @override
  void initState() {
    super.initState();
    showColor = Colors.red;
  }

 changeColor() {
    setState(() {
      print("set state running");
      if (i < colorsDisplayed.length-1) {
        showColor = colorsDisplayed[i];
        i += 1;
      } else {
        i = 0;
        showColor = colorsDisplayed[i];
      }
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
