import 'package:flutter/material.dart';
import 'package:meal_app/model/meals.dart';
import 'package:meal_app/Screen/meal_detail.dart';
import 'package:meal_app/widget/meal_item_subpart.dart';
import 'package:transparent_image/transparent_image.dart';

class MealItem extends StatelessWidget {
  const MealItem({super.key, required this.meal});

  String get getComplexity {
    return meal.complexity.name[0].toUpperCase() +
        meal.complexity.name.substring(1);
  }

  String get getAffordability {
    return meal.affordability.name[0].toUpperCase() +
        meal.affordability.name.substring(1);
  }

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (cts) => MealItemCards(meal: meal)),
          );
        },
        child: Stack(
          children: [
            FadeInImage(
              fadeInDuration: Duration(seconds: 1),
              placeholder: MemoryImage(kTransparentImage),
              image: NetworkImage(meal.imageUrl),
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                color: Colors.black54,
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                child: Column(
                  children: [
                    Text(meal.title, style: TextStyle(color: Colors.white)),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MealItemSubpart(
                          icon: Icons.schedule,
                          label: "${meal.duration} min",
                        ),
                        SizedBox(width: 80),
                        MealItemSubpart(icon: Icons.work, label: getComplexity),
                        SizedBox(width: 80),
                        MealItemSubpart(
                          icon: Icons.attach_money,
                          label: getAffordability,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
