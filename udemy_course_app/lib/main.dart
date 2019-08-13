import 'package:flutter/material.dart';
// below import is for UI debugging
import 'package:flutter/rendering.dart';

import './product_manager.dart';

main() {
  //below statement for UI debug
  debugPaintSizeEnabled = true;
  runApp(MyApp());
}

// void main() => runApp(
//     MyApp()); 

// The above syntax is valid if main() contains only one statement

// dynamic apps require StatefulWidget

class MyApp extends StatelessWidget {
  final String startingProduct = "Advanced Food Tester";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.red,
          brightness: Brightness.light
        ),
        home: Scaffold(
      appBar: AppBar(title: Text("EasyList")),
      body: ListView(children: <Widget>[ProductManager(startingProduct)]),
    ));
  }
}
