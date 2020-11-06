import 'package:flutter/material.dart';

import '../models/meal.dart';
import '../widgets/main_drawer.dart';
import '../widgets/meals_list.dart';
import 'categories_page.dart';

class TabsPage extends StatefulWidget {
  const TabsPage(this.favoriteMeals);

  final List<Meal> favoriteMeals;

  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  List<Map<String, Object>> _pages;
  var _currentIndex = 0;

  void _selectTab(int index) => setState(() => _currentIndex = index);

  @override
  void initState() {
    super.initState();
    _pages = [
      {'title': 'Categories', 'body': CategoriesPage()},
      {'title': 'Favorites', 'body': MealsList(widget.favoriteMeals)},
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_pages[_currentIndex]['title'])),
      drawer: MainDrawer(),
      body: _pages[_currentIndex]['body'],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _selectTab,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}
