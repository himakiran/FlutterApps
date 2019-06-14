import "package:flutter/material.dart";

class Products extends StatelessWidget {

  final List<String> products;

  // This is constructor convention in Dart. It means that it shall accept an argument
  // products and store it in he above products property. The above property products is final
  // because this class extends the StatelessWidget.
  
  Products(this.products);

  @override
  Widget build(BuildContext context) {
    return Column(
          // 
          // Meaning of below line :
          // The array/list products is mapped to a function .
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
          children: products
              .map((element) => Card(
                    child: Column(
                      children: <Widget>[
                        Image.asset('assets/food.jpg'),
                        Center(child: Text(element)),
                      ],
                    ),
                  ))
              .toList(),
        );
  }
  
}