import 'package:flutter/material.dart';
import 'package:meal_app/Screen/categories.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key, required this.onSelectscreen});

  final void Function(String identifire) onSelectscreen;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            child: Row(
              children: [
                Icon(Icons.fastfood),
                SizedBox(width: 16),
                Text(
                  'Cooking Up ....',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.restaurant,
              color: Theme.of(context).colorScheme.primary,
            ),
            title: Text(
              'first title',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            onTap: () {
              onSelectscreen('meals');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.sports_basketball_outlined,
              color: Theme.of(context).colorScheme.primary,
            ),
            title: Text(
              'Second title',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, 'home');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.food_bank_rounded,
              color: Theme.of(context).colorScheme.primary,
            ),
            title: Text(
              'Third title',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            onTap: () {
              onSelectscreen('filters');
            },
          ),
        ],
      ),
    );
  }
}
