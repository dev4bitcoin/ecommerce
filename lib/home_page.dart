import 'package:ecommerce/cart_page.dart';
import 'package:ecommerce/components/bottom_navbar.dart';
import 'package:ecommerce/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  void navigateBottomBar(int value) {
    setState(() {
      selectedIndex = value;
    });
  }

  final List<Widget> pages = [
    ShopPage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(
        onTabChange: (value) => navigateBottomBar(value),
      ),
      body: SizedBox(
        height: 800,
        child: pages[selectedIndex],
      ),
    );
  }
}
