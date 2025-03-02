import 'package:flutter/material.dart';
import "../models/shoe.dart";

class ShoeTile extends StatelessWidget {
  // Member Variables
  Shoe shoe;
  // Constructor Parameters
  ShoeTile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          // shoe pic
          Image.asset(shoe.imagePath, height: 250, width: 350),
          // description

          // price + details

          // button to add to cart
        ],
      ),
    );
  }
}
