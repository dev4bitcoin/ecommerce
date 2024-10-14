// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  String name;
  double price;
  String imagePath;
  String description;

  Tile(
      {super.key,
      required this.name,
      required this.price,
      required this.imagePath,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
          top: 20.0, bottom: 20.0, left: 10.0, right: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey, width: .2),
        borderRadius: BorderRadius.circular(10),
      ),
      width: 290,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(
                top: 50.0, bottom: 10.0, left: 10.0, right: 10.0),
            child: Image.asset(imagePath,
                width: 250, height: 220, fit: BoxFit.contain),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child:
                Text(name, style: TextStyle(fontSize: 20, color: Colors.grey)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(description,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                    SizedBox(height: 5),
                    Text('\$${price}',
                        style: TextStyle(fontSize: 15, color: Colors.grey)),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  print('Add to cart');
                },
                child: Container(
                  //margin: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: IconButton(
                    icon: Icon(Icons.add, color: Colors.white),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
