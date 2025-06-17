import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Select Your Category")),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
        children: [
          Center(
            child: Text(
              'data',
              style: TextStyle(color: Color.fromARGB(149, 255, 255, 255)),
            ),
          ),
          Text(
            'data',
            style: TextStyle(color: Color.fromARGB(149, 255, 255, 255)),
          ),
          Text(
            'data',
            style: TextStyle(color: Color.fromARGB(149, 255, 255, 255)),
          ),
          Text(
            'data',
            style: TextStyle(color: Color.fromARGB(149, 255, 255, 255)),
          ),
          Text(
            'data',
            style: TextStyle(color: Color.fromARGB(149, 255, 255, 255)),
          ),
          Text(
            'data',
            style: TextStyle(color: Color.fromARGB(149, 255, 255, 255)),
          ),
        ],
      ),
    );
  }
}
