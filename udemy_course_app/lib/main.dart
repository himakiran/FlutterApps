import 'package:flutter/material.dart';

import './product_manager.dart';

// main() {
//   runApp(MyApp());
// }

void main() => runApp(
    MyApp()); // This syntax is valid if main() contains only one statement

// dynamic apps require StatefulWidget

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("EasyList"), backgroundColor: Colors.red),
      body: ListView(children: <Widget>[ProductManager()]),
    ));
  }
}
