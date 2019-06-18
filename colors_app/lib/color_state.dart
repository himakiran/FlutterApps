import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:quiver/iterables.dart';


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
  static List<String> colorNames = const <String>[
    "Red",
    "Pink",
    "Purple",
      "DeepPurple",
      "Indigo",
      "Blue",
      "LightBlue",
      "Cyan",
      "Teal",
      "Green",
      "LightGreen",
      "Lime",
      "Yellow",
      "Amber",
      "Orange",
      "DeepOrange",
      "Brown",
      "BlueGrey"
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
  static List<String> accentColorNames = const <String>[
    "RedAccent",
    "PinkAccent",
    "PurpleAccent",
      "DeepPurpleAccent",
      "IndigoAccent",
      "BlueAccent",
      "LightBlueAccent",
      "CyanAccent",
      "TealAccent",
      "GreenAccent",
      "LightGreenAccent",
      "LimeAccent",
      "YellowAccent",
      "AmberAccent",
      "OrangeAccent",
      "DeepOrangeAccent",
      "BrownAccent",
      "BlueGreyAccent"
  ];
  // This variable holds the color which shall be painted
  Color showColor;
  // This variable holds the name of the material color
  String showColorName;

  // To create a list of all material colors, we define a function listAllColors
  // This function takes in the list of primary material colors and returns the colorswatch of that color
  // and the colorswatch of the accent color.

  List<Color> allColors = new List<Color>();
    List<String> allColorsNames = new List<String>();
  
  void listAllColors(
      List<MaterialColor> ll, List<MaterialAccentColor> al, List<String> cl, List<String> ca) {

    

    // This function adds all the swatch colors
    void addMaterialColors(MaterialColor c, String s) {
      allColors.add(c[50]); // This adds for eg Colors.red[50] to the list
      allColorsNames.add("Colors."+s+"[50]");
      for (var j = 100; j < 1000; j += 100) {
        if (j != 500) {
          allColors.add(c[j]);
          allColorsNames.add("Colors."+s+"["+j.toString()+"]");
        } // since the color is same as the colorswatch with index 500
        else {
          allColors.add(c);
          allColorsNames.add("Colors."+s);
        }
      }
    }

    // zip is from the quiver package which lets me iterate thru two lists in parallel
    for (var pair in zip([ll, cl])) {
     addMaterialColors(pair[0],pair[1]);
    }
    //ll.forEach((el) => addMaterialColors(el));
    
    void addMaterialAccentColors(MaterialAccentColor ac, String s) {
      allColors.add(ac[100]);
      allColorsNames.add("Colors."+s+"[100]");
      allColors.add(ac);
      allColorsNames.add("Colors."+s);
      allColors.add(ac[400]);
      allColorsNames.add("Colors."+s+"[400]");
      allColors.add(ac[700]);
      allColorsNames.add("Colors."+s+"[700]");
    }

    //al.forEach((el) => addMaterialAccentColors(el));
    for (var pair in zip([al, ca])) {
     addMaterialAccentColors(pair[0],pair[1]);
    }
  }

  
  
  @override
  void initState() {
    super.initState();
    listAllColors(colorsDisplayed, accentColorsDisplayed,colorNames,accentColorNames);
    showColor = Colors.red;
    showColorName = "Colors.red";
  }

  void changeColor() {
    int i = 0;
    int maxSize = allColors.length;
    setState(() {
      //print("set state running");
      var rng = new Random();
      i = rng.nextInt(maxSize);

      showColor = allColors[i];
      showColorName = allColorsNames[i];
    });
  }
  void showColorInfo(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Color Information"),
          content: new Text(showColorName),
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
