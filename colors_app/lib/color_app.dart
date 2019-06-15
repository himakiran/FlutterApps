import 'package:flutter/material.dart';


class ColorApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.red),
          floatingActionButton: FloatingActionButton(onPressed: () {},
          tooltip: 'Change Color',
          child: Icon(Icons.colorize),
            
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat
      
        ),
      );
    
  }
  
}