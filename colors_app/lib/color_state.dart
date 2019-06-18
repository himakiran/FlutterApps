import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class ColorState extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ColorState();
  }
}

class _ColorState extends State<ColorState> {
  // The below code declares a list of primary material colors
  static List<MaterialColor> colorsDisplayed = const <MaterialColor>[
    Colors.red,
    Colors.pink,
    Colors.purple,
    Colors.deepPurple,
    Colors.indigo,
    Colors.blue,
    Colors.lightBlue,
    Colors.cyan,
    Colors.teal,
    Colors.green,
    Colors.lightGreen,
    Colors.lime,
    Colors.yellow,
    Colors.amber,
    Colors.orange,
    Colors.deepOrange,
    Colors.brown,
    Colors.blueGrey
  ];
  static List<MaterialAccentColor> accentColorsDisplayed =
      const <MaterialAccentColor>[
    Colors.redAccent,
    Colors.pinkAccent,
    Colors.purpleAccent,
    Colors.deepPurpleAccent,
    Colors.indigoAccent,
    Colors.blueAccent,
    Colors.lightBlueAccent,
    Colors.cyanAccent,
    Colors.tealAccent,
    Colors.greenAccent,
    Colors.lightGreenAccent,
    Colors.limeAccent,
    Colors.yellowAccent,
    Colors.amberAccent,
    Colors.orangeAccent,
    Colors.deepOrangeAccent
  ];

  // This variable holds the color which shall be painted
  Color showColor;

  // To create a list of all material colors, we define a function listAllColors
  // This function takes in the list of primary material colors and returns the colorswatch of that color
  // and the colorswatch of the accent color.

  static List<Color> listAllColors(
      List<MaterialColor> ll, List<MaterialAccentColor> al) {
    List<Color> allColors = new List<Color>();
    // This function adds all the swatch colors
    void addMaterialColors(MaterialColor c) {
      allColors.add(c[50]); // This adds for eg Colors.red[50] to the list
      for (var j = 100; j < 1000; j += 100) {
        if (j != 500) {
          allColors.add(c[j]);
        } // since the color is same as the colorswatch with index 500
        else {
          allColors.add(c);
        }
      }
    }

    ll.forEach((el) => addMaterialColors(el));
    void addMaterialAccentColors(MaterialAccentColor ac) {
      allColors.add(ac[100]);
      allColors.add(ac);
      allColors.add(ac[400]);
      allColors.add(ac[700]);
    }

    al.forEach((el) => addMaterialAccentColors(el));
    return allColors;
  }

  static List<Color> allColors =
      listAllColors(colorsDisplayed, accentColorsDisplayed);
  int i = 0;
  int maxSize = allColors.length;
  @override
  void initState() {
    super.initState();
    showColor = Colors.red;
  }

  void changeColor() {
    setState(() {
      //print("set state running");
      var rng = new Random();
      i = rng.nextInt(maxSize);

      showColor = allColors[i];
    });
  }
  void showColorInfo(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Color Information"),
          content: new Text(showColor.value.toString()),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    //print("build running");
    return MaterialApp(
        home: Scaffold(
            body: Builder(builder: (context) => Container(
                color: showColor,
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: FloatingActionButton(
                        onPressed: () {
                          showColorInfo(context);
                        },
                        tooltip: 'Show Color Info',
                        child: Icon(Icons.info),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: FloatingActionButton(
                        onPressed: () {
                          changeColor();
                        },
                        tooltip: 'Change Color',
                        child: Icon(Icons.colorize),
                      ),
                    ),
                  ],
                )))
            // floatingActionButton: FloatingActionButton(
            //   onPressed: () {
            //     changeColor();
            //   },
            //   tooltip: 'Change Color',
            //   child: Icon(Icons.colorize),
            // ),
            // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat

            ));
  }
}
