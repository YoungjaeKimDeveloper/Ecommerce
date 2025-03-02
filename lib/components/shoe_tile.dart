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
          Text(
            shoe.description,
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          // price + details
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(shoe.name, style: TextStyle(fontWeight: FontWeight.bold)),
                Text(shoe.price),
              ],
            ),
          ),
          // button to add to cart
        ],
      ),
    );
  }
}
