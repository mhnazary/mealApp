import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meal_app/Screen/categories.dart';
import 'package:meal_app/Screen/meal.dart';
import 'package:meal_app/widget/favorite.dart';
import 'package:meal_app/widget/main_drawer.dart';
import 'package:meal_app/riverpod/meal_provider.dart';

class TabScreen extends ConsumerStatefulWidget {
  const TabScreen({super.key});

  @override
  ConsumerState<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends ConsumerState<TabScreen> {
  int _selectedTab = 0;

  void selectedtabs(int index) {
    // for ontap method
    setState(() {
      _selectedTab = index;
    });
  }

  void _onSelectScreen(String identifier) {
    if (identifier == "meals") {
    } else {
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = Categories(); // for body
    var title = 'category'; // for title

    if (_selectedTab == 1) {
      final favoriteMeal = ref.watch(favoritMealProviderProvider);
      activePage = MealScreen(title: 'mealScreen', meals: favoriteMeal);
      title = "Favorite";
    }
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      drawer: MainDrawer(onSelectscreen: _onSelectScreen),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: selectedtabs,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.set_meal),
            label: 'categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}
