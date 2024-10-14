// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce/components/tile.dart';
import 'package:ecommerce/models/product.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {
  ShopPage({super.key});

  var products = [
    Product(
        name: "Product 1",
        description: "Jordan",
        price: 100,
        imagePath: "lib/images/1.png"),
    Product(
        name: "Product 2",
        price: 200,
        description: "NB",
        imagePath: "lib/images/2.png"),
    Product(
        name: "Product 3",
        price: 300,
        description: "Nike",
        imagePath: "lib/images/3.png"),
    Product(
        name: "Product 4",
        price: 400,
        description: "Adidas",
        imagePath: "lib/images/4.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        padding: const EdgeInsets.all(12.0),
        margin: const EdgeInsets.only(
            top: 70.0, bottom: 20.0, left: 20.0, right: 20.0),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Search',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
            Icon(Icons.search, color: Colors.grey),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'everyone flies.. some fly longer than others',
          style: TextStyle(color: Colors.grey),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'Hot Picks \u{1F525}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'See All',
              style: TextStyle(fontSize: 15, color: Colors.blue),
            ),
          ],
        ),
      ),
      const SizedBox(height: 10),
      Expanded(
          child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Tile(
              name: products[index].name,
              price: products[index].price,
              imagePath: products[index].imagePath,
              description: products[index].description,
            ),
          );
        },
      )),
    ]);
  }
}
