import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  Widget buildDrawerItem(IconData icon, String label) {
    return ListTile(
      leading: Icon(icon, size: 28.0),
      title: Text(
        label,
        style: TextStyle(
          fontFamily: 'Roboto Condensed',
          fontWeight: FontWeight.bold,
          fontSize: 24.0,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120.0,
            color: Colors.yellow,
            padding: const EdgeInsets.all(20.0),
            alignment: Alignment.centerLeft,
            child: Text(
              'Cooking Up!',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w900,
                fontSize: 30.0,
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          buildDrawerItem(Icons.restaurant, 'Meals & Recipes'),
          buildDrawerItem(Icons.settings, 'Filters'),
        ],
      ),
    );
  }
}
