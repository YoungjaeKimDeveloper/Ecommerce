// Model Class
import 'package:ecommerce/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  // Shop 전체에 있는신발 보여주기
  List<Shoe> shoeShop = [
    Shoe(
      name: "Air Jordan 1",
      price: "200",
      description: "Classic design with premium leather and .",
      imagePath: "lib/images/product1.jpg",
    ),
    Shoe(
      name: "Nike",
      price: "150",
      description: "A retro basketball shoe with a stylish and .",
      imagePath: "lib/images/product2.jpg",
    ),
    Shoe(
      name: "Adidas ",
      price: "180",
      description: "Comfortable running shoes with Boost technology ",
      imagePath: "lib/images/product3.jpg",
    ),
    Shoe(
      name: "Puma RS-X",
      price: "130",
      description: "Chunky sneakers with bold colors .",
      imagePath: "lib/images/product4.jpg",
    ),
    Shoe(
      name: "New Balance 550",
      price: "170",
      description: "A classic basketball-inspired sneaker ",
      imagePath: "lib/images/product5.jpg",
    ),
  ];
  // list of items in user cart
  // 현재 유저 카트에 있는 신발 보여주기

  // Data encapsulation
  List<Shoe> userCart = [];
  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  // Data encapsulation
  List<Shoe> getShopCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItem(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
