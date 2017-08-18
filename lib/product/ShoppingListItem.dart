import 'package:flutter/material.dart';
import 'package:untitled1/product/Product.dart';


class ShoppingItemList extends StatefulWidget{

  final Product product;

  ShoppingItemList(Product product)
      : product = product,
        super(key: new ObjectKey(product));

  @override
  ShoppingItemState createState() {
    return new ShoppingItemState(product);
  }
}
class ShoppingItemState extends State<ShoppingItemList> {

  final Product product;

  ShoppingItemState(this.product);


  @override
  Widget build(BuildContext context) {
    return new ListTile(
        onTap:null,
        leading: new CircleAvatar(
          backgroundColor: Colors.blue,
          child: new Image(image: new AssetImage(product.avatarImage)),
        ),
        title: new Row(
          children: <Widget>[
            new Expanded(child: new Text(product.name)),
            new Checkbox(value: product.isCheck, onChanged: (bool value) {
              setState(() {
                product.isCheck = value;
              });
            })
          ],
        )
    );
  }
}