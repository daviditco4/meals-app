import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200.0,
        childAspectRatio: 3.0 / 2.0,
        mainAxisSpacing: 20.0,
        crossAxisSpacing: 20.0,
      ),
      children: [],
    );
  }
}
