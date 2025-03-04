import 'package:flutter/material.dart';
import "../models/shoe.dart";

class ShoeTile extends StatelessWidget {
  // Member Variables
  Shoe shoe;
  void Function()? onTap;
  // Constructor Parameters
  ShoeTile({super.key, required this.shoe, required this.onTap});

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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // shoe pic
          FittedBox(
            fit: BoxFit.fill,
            clipBehavior: Clip.hardEdge,
            child: Image.asset(shoe.imagePath, height: 250, width: 320),
          ),
          // description
          Padding(
            padding: EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Text(
              shoe.description,
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
          ),
          // price + details
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Text(
                          shoe.name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 21.0,
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Text('\$${shoe.price}', style: TextStyle(fontSize: 10)),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: onTap,
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Icon(Icons.add, size: 20.0, color: Colors.white),
                    ),
                  ),
                ],
              ),
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          ),
          // button to add to cart
        ],
      ),
    );
  }
}
