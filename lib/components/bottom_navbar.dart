// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  BottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GNav(
            color: Colors.grey,
            activeColor: Colors.red,
            tabBackgroundColor: Colors.grey.shade400,
            tabActiveBorder: Border.all(color: Colors.black, width: 1),
            mainAxisAlignment: MainAxisAlignment.center,
            tabBorderRadius: 10,
            tabMargin: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 20),
            onTabChange: (value) => onTabChange!(value),
            tabs: [
          GButton(
            icon: Icons.shop,
            text: 'Shop',
            padding: EdgeInsets.all(10),
          ),
          GButton(
            icon: Icons.shopping_cart,
            text: 'Cart',
            padding: EdgeInsets.all(10),
          ),
        ]));
  }
}
