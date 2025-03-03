import 'package:ecommerce/models/cart.dart';
import 'package:ecommerce/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import "package:ecommerce/components/shoe_tile.dart";
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder:
          (context, value, child) => Column(
            children: [
              // search bar
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.symmetric(horizontal: 30.0),
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Search"), Icon(Icons.search)],
                ),
              ),
              // messages
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  "everyone files.. some fly longer than others",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Hot Picks 🔥",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              // list of shoes for sale
              Expanded(
                child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    // create a shoe
                    // Shoe shoe = Shoe(
                    //   name: "Air Jordan",
                    //   price: "240",
                    //   imagePath: "lib/images/product2.jpg",
                    //   description: "Cool shoes",
                    // );
                    Shoe shoe = value.getShoeList()[index];
                    return ShoeTile(shoe: shoe);
                  },
                ),
              ),
              // hot picks
            ],
          ),
    );
  }
}
