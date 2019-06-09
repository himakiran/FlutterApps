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
          child: Column(
            children: <Widget>[
              Image.asset('assets/food.jpg'),
              Text('Food Paradise')
            ],
          ),
        ),
      ),
    );
  }
}
