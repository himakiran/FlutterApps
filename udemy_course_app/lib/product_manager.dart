import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = ['Food Tester'];

  @override
  Widget build(BuildContext context) {
    return Column (children: [Container(
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
    Products(_products)]);
  }
}
