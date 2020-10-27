import 'package:flutter/material.dart';

import '../widgets/category_item.dart';
import '../dummy_data.dart';

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
          return CategoryItem(
            id: data.id,
            title: data.title,
            color: data.color,
          );
        }).toList(),
      ),
    );
  }
}
