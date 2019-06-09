import 'package:flutter/material.dart';

// main() {
//   runApp(MyApp());
// }

void main() => runApp(
    MyApp()); // This syntax is valid if main() contains only one statement

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("EasyList"), backgroundColor: Colors.red),
        body: Card(
          child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.all(15.0),
              children: <Widget>[
              Image.asset('assets/food.jpg'),
              Text('Food Paradise'),
              Image.asset('assets/food.jpg'),
              Text('Food Paradise 2'),
              Image.asset('assets/food.jpg'),
              Text('Food Paradise 3')
            ], 
          ),
      ),
    ),
    );
  }
}
