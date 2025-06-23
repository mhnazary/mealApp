import 'package:flutter/material.dart';
import 'package:meal_app/model/meals.dart';
import 'package:meal_app/widget/meal_item.dart';

class MealScreen extends StatelessWidget {
  const MealScreen({super.key, required this.title, required this.meals});

  final String title;
  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    if (meals.isEmpty) {
      return Center(
        child: Text(
          'No meals added yet!',
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: ListView.builder(
        itemCount: meals.length,
        itemBuilder: (ctx, index) => MealItem(meal: meals[index]),
      ),
    );
  }
}
