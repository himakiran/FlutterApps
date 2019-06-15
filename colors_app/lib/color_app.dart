import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ColorApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.red
        ),
      )
    );
  }
  
}