import 'package:flutter/material.dart';
import 'package:untitled1/ShoppingList.dart';
import 'package:untitled1/product/Product.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Demo App',
    home: new SoppingList(product:
      [
        new Product('Eggs','assets/person.png',false),
        new Product('Flour','assets/person.png',false),
        new Product('Chocolate chips','assets/person.png',false),


        new Product('Tomato sauce','assets/person.png',false),
        new Product('Mustard','assets/person.png',false),
        new Product('Barbecue sauce','assets/person.png',false),

        new Product('Red-wine vinegar','assets/person.png',false),
        new Product('Salsa','assets/person.png',false),
        new Product('canola oil','assets/person.png',false),

        new Product('Brown rice','assets/person.png',false),
        new Product('Whole wheat','assets/person.png',false),
        new Product('Ground turkey','assets/person.png',false),

        new Product('Salmon','assets/person.png',false),
        new Product('Reduced-sodium','assets/person.png',false),
        new Product('English muffins','assets/person.png',false),

        new Product('pita pockets','assets/person.png',false),
        new Product('Wheat bread','assets/person.png',false),
        new Product('Jarred capers','assets/person.png',false),





      ],),
  ));
}
