import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  MyBottomNavBar({super.key, required this.onTabChange});
  void Function(int?) onTabChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: GNav(
        color: Colors.grey,
        activeColor: Colors.black,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        mainAxisAlignment: MainAxisAlignment.center,
        onTabChange: (index) => onTabChange(index),
        tabs: [
          GButton(icon: Icons.home, text: "Shop"),
          GButton(icon: Icons.shop, text: "Cart"),
        ],
      ),
    );
  }
}
