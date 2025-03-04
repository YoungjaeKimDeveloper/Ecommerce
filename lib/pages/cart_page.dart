import 'package:ecommerce/components/cart_item.dart';
import 'package:ecommerce/components/shoe_tile.dart';
import 'package:ecommerce/models/cart.dart';
import 'package:ecommerce/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) {
        return ListView.builder(
          itemCount: value.getShopCart().length,
          itemBuilder: (context, index) {
            // get individual shoe
            Shoe individualShoe = value.getShopCart()[index];
            // return the cart item
            return CartItem(shoe: individualShoe);
          },
        );
      },
    );
  }
}
