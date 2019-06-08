import 'package:flutter/material.dart';


main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("EasyList"),
          backgroundColor: Colors.red
        ),
      ),
    );
  }
}
