import 'package:flutter/material.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('title of favorite')),
      body: Column(
        children: [
          Container(
            height: 300,
            width: 300,
            color: Theme.of(context).colorScheme.primary,
          ),
        ],
      ),
    );
  }
}
