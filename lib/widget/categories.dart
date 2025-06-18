import 'package:flutter/material.dart';
import 'package:meal_app/data/category_data.dart';
import 'package:meal_app/model/category.dart';
import 'package:meal_app/widget/CategoryGridItem.dart';
import 'package:meal_app/widget/meal.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  void _selectCategory(BuildContext context, Category category) {
    var filterdData =
        dummyMeals
            .where((meal) => meal.categories.contains(category.id))
            .toList();

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (cts) => MealScreen(title: category.title, meals: filterdData),
      ),
    );
  }

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
          ...availableCategories.map(
            (category) => Categorygrgriditem(
              category: category,
              onSelectCategory: () {
                _selectCategory(context, category);
              },
            ),
          ),
        ],
      ),
    );
  }
}
