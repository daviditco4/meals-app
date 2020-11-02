import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';
import 'categories_page.dart';
import 'favorites_page.dart';

class TabsPage extends StatefulWidget {
  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  final _pages = [
    {'title': 'Categories', 'body': CategoriesPage()},
    {'title': 'Favorites', 'body': FavoritesPage()},
  ];
  var _currentIndex = 0;

  void _selectTab(int index) => setState(() => _currentIndex = index);

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
