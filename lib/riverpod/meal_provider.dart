import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meal_app/model/meals.dart';

final name = Provider((ref) => 'jljdlfksjdfl');

// ignore: camel_case_types
class favoriteMealNotifier extends StateNotifier<List<Meal>> {
  favoriteMealNotifier() : super([]);
  void toggleMealFavorite(Meal meal) {
    final mealIsFavorti = state.contains(meal);

    if (mealIsFavorti) {
      state = state.where((m) => m.id != meal.id).toList();
    } else {
      state = [...state, meal];
    }
  }
}

final favoritMealProviderProvider =
    StateNotifierProvider<favoriteMealNotifier, List<Meal>>(
      (ref) => favoriteMealNotifier(),
    );
