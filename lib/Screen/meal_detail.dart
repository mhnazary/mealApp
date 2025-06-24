import 'package:flutter/material.dart';
import 'package:meal_app/model/meals.dart';
import 'package:meal_app/riverpod/meal_provider.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MealItemCards extends ConsumerWidget {
  const MealItemCards({super.key, required this.meal});

  final Meal meal;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoriteMeal = ref.watch(favoritMealProviderProvider);
    final isFavorite = favoriteMeal.contains(meal);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          meal.title,
          style: Theme.of(
            context,
          ).textTheme.titleLarge!.copyWith(color: Colors.white),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {
                ref
                    .read(favoritMealProviderProvider.notifier)
                    .toggleMealFavorite(meal);
              },
              icon: Icon(isFavorite ? Icons.star : Icons.star_border),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FadeInImage(
              fadeInDuration: Duration(seconds: 1),
              placeholder: MemoryImage(kTransparentImage),
              image: NetworkImage(meal.imageUrl),
              fit: BoxFit.cover,
              height: 250,
              width: double.infinity,
            ),
            SizedBox(height: 10),
            Text(
              'Ingredients',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            SizedBox(height: 8),
            for (final ingredient in meal.ingredients)
              Text(
                ingredient,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            Text(
              'Steps',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            SizedBox(height: 8),
            for (final step in meal.steps)
              Text(
                step,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
