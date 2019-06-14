import 'package:flutter/material.dart';

void main() {
  runApp(ExOneApp());
}

class ExOneApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ExOneAppState();
  }
}

class _ExOneAppState extends State<ExOneApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme:
            ThemeData(primaryColor: Colors.blue, brightness: Brightness.light),
        home: Scaffold(
          appBar: AppBar(title: Text("ChangeText: ExOneApp")),
          body: ListView(children: <Widget>[
            Card(
              margin: EdgeInsets.all(10.0),
              color: Theme.of(context).primaryColorLight,
                child:
                    SizedBox(width: 80.0, height: 80.0, child: FittedBox(fit: BoxFit.fill, child:Text("HELLO") ) )),
            Card(
                margin: EdgeInsets.all(10.0),
                color: Theme.of(context).primaryColorLight,
                child:
                    SizedBox(width: 80.0, height: 80.0, child: FittedBox(fit: BoxFit.fill,child:Text("WORLD") ,)))
          ]),
        ));
  }
}
