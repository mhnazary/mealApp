import 'package:flutter/material.dart';
import 'package:meal_app/Screen/categories.dart';
import 'package:meal_app/Screen/meal.dart';
import 'package:meal_app/widget/favorite.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int _selectedTab = 0;

  void selectedtabs(int index) {
    // for ontap method
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = Categories(); // for body
    var title = 'category'; // for title

    if (_selectedTab == 1) {
      activePage = Favorite();
      title = "Favorite";
    }
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
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
