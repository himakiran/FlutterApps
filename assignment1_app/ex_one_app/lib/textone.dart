import 'package:flutter/material.dart';

class TextOne extends StatelessWidget {
  final String word;
  TextOne(this.word);

  @override
  Widget build(BuildContext context) {
    print("build in textOne runs ..");
    return Card(
                margin: EdgeInsets.all(10.0),
                color: Theme.of(context).primaryColorLight,
                child: SizedBox(
                    width: 80.0,
                    height: 80.0,
                    child: FittedBox(fit: BoxFit.fill, child: Text(word))));
  }
}