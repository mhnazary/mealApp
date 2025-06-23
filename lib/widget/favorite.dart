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
            height: 400,
            width: 400,
            color: Theme.of(context).colorScheme.primary,
          ),
        ],
      ),
    );
  }
}
