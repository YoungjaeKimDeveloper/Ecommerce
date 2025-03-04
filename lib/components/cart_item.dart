import 'package:ecommerce/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import "../models/cart.dart";

class CartItem extends StatefulWidget {
  Shoe shoe;

  CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CartItem> {
  void removeItem() {
    Provider.of<Cart>(context, listen: false).removeItem(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: Container(
            width: 100, // 원하는 너비
            height: 100, // 원하는 높이
            child: Image.asset(
              widget.shoe.imagePath,
              fit: BoxFit.cover, // 이미지 비율에 맞게 채우기
            ),
          ),
          title: Text(widget.shoe.name),
          subtitle: Text("\$" + widget.shoe.price),
          trailing: IconButton(icon: Icon(Icons.delete), onPressed: removeItem),
        ),
      ],
    );
  }
}
