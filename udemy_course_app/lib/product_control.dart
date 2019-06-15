import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {

  // GETTING ACCESS TO STATE SETTING FUNCTION IN STATELESS WIDGET ::

  // as this is a statelesswidget to have setstate for onPressed in button
  // i need access to a state setting function.
  // The state setting function is present in product_manager.dart which
  // extends a stateful widget. To get that function here we define a final Function below
  // and set it to the reference we receive in the constructor

  final Function addProduct;
  ProductControl(this.addProduct);
  @override
  Widget build(BuildContext context) {
    
    return RaisedButton(
        color: Theme.of(context).primaryColor,
        onPressed: () {
          // Now the below function will actually run the _addProduct function
          // in the product_manager.dart file
          addProduct('Advanced Food Tester');
        },
        child: Text('ADD'),
      );
  }
  
}