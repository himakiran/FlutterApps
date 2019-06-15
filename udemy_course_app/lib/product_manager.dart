import 'package:flutter/material.dart';

import './products.dart';
import './product_control.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager(this.startingProduct);

  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    super.initState();
    // the widget property of the State object allows you to access the properties
    // and methods of the base class ie _ProductManagerState.
    _products.add(widget.startingProduct);
    
  }

  void _addProduct(String product){
    setState(() {
            // Any code which changes the internal state has to be put here in this function for it to work.
            _products.add(product);
          });
  }

  @override
  Widget build(BuildContext context) {
    return Column (children: [Container(
      margin: EdgeInsets.all(10.0),
      alignment: Alignment.center,
      child: ProductControl(_addProduct)
    ),
    Products(_products)]);
  }
}
