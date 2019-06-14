import 'package:flutter/material.dart';

import './textone.dart';

class ExOneApp extends StatefulWidget {
  final List<String> words;
  ExOneApp(this.words);

  @override
  State<StatefulWidget> createState() {
    print("ExOneApp runs..");
    return _ExOneAppState();
  }
}

class _ExOneAppState extends State<ExOneApp> {
  List<String> words;
  int i=0;
  @override
  void initState() {
    super.initState();
    print("initState in _ExOneAppState runs ..");
    words = widget.words;
    print(words);
  }

  @override
  Widget build(BuildContext context) {
   
    List<String> wordsList = ["World" ,"How", "Are", "You"];
    print("build in _ExOneAppState runs ..");
    return MaterialApp(
        theme:
            ThemeData(primaryColor: Colors.blue, brightness: Brightness.light),
        home: Scaffold(
          appBar: AppBar(title: Text("ChangeText: ExOneApp")),
          body: ListView(children: <Widget>[
            RaisedButton(
              onPressed: () {
                setState(() {
                  print("setState in _ExOneAppState runs ..");
                  if(i<wordsList.length){
                  words.add(wordsList[i]);
                  i+=1;}
                  else
                  i=0;
                });
              },
              child: Text('ADD'),

            ),
          Column(children: words
              .map((element) => Card(
                    child: Column(
                      children: <Widget>[
                        Center(child: TextOne(element)),
                      ],
                    ),
                  ))
              .toList(),
        )])));
          
  }
}
