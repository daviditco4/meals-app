import 'package:flutter/material.dart';

import 'category_item.dart';
import 'dummy_data.dart';

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Categories')),
      body: GridView(
        padding: const EdgeInsets.all(20.0),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200.0,
          childAspectRatio: 3.0 / 2.0,
          mainAxisSpacing: 20.0,
          crossAxisSpacing: 20.0,
        ),
        children: dummyCategories.map((data) {
          return CategoryItem(data.title, data.color);
        }).toList(),
      ),
    );
  }
}