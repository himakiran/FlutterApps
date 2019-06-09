import 'package:flutter/material.dart';

// main() {
//   runApp(MyApp());
// }

void main() => runApp(
    MyApp()); // This syntax is valid if main() contains only one statement

// dynamic apps require StatefulWidget

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

// The underscore before the class name means that his class
// cannot be imported into another file and is to be used here only

class _MyAppState extends State<MyApp> {
  List<String> _products = ['Food Tester'];
  @override
  Widget build(BuildContext context) {
    // Meaning of below line :
    // The array/list _products is mapped to a function .
    //  This function wich is not named and is written wholly inside
    //  accepts each element from the list and converts it into the card
    //  as shown below. The output of the function is a list of card widgets

    // _products.map((element) => Card(
    //       child: Column(
    //         children: <Widget>[
    //           Image.asset('assets/food.jpg'),
    //           Center(child: Text(element)),
    //         ],
    //       ),
    //     ));

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("EasyList"), backgroundColor: Colors.red),
      body: ListView(children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          alignment: Alignment.center,
          child: RaisedButton(
            onPressed: () {
              setState(() {
                // Any code which changes the internal state has to be put here in this function for it to work.
                _products.add('Advanced Food Tester');
              });
            },
            child: Text('ADD'),
          ),
        ),
        Column(
          // Read the explanation of the below line at the start of this class
          children: _products
              .map((element) => Card(
                    child: Column(
                      children: <Widget>[
                        Image.asset('assets/food.jpg'),
                        Center(child: Text(element)),
                      ],
                    ),
                  ))
              .toList(),
        )
      ]),
    ));
  }
}
