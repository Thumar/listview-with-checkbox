import 'dart:math';

import 'package:flutter/material.dart';
import 'package:untitled1/product/Product.dart';
import 'package:untitled1/product/ShoppingListItem.dart';

class ShoppingList extends StatefulWidget {
  ShoppingList({Key key, this.product}) :super(key: key);

  List<Product> product;


  @override
  _SoppingListState createState() {
    return new _SoppingListState();
  }
}

class _ShoppingListState extends State<SoppingList> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Product List"),
        ),
        body: new Container(
          padding: new EdgeInsets.all(8.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              new Expanded(child: new ListView(
                padding: new EdgeInsets.symmetric(vertical: 8.0),
                children: widget.product.map((Product product) {
                  return new ShoppingItemList(product);
                }).toList(),
              )),
              new RaisedButton(onPressed: () {
                for (Product p in widget.product) {
                  if (p.isCheck)
                    print(p.name);
                }
              },
                child: new Text('Save'),
              )
            ],
          ),
        )
    );
  }
}
