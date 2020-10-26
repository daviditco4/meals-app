import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    @required this.id,
    @required this.title,
    @required this.color,
  });

  final String id;
  final String title;
  final Color color;

  void pushCategoryMealsPage(BuildContext context) {
    Navigator.of(context).pushNamed(
      '/category-meals',
      arguments: {'id': id, 'title': title},
    );
  }

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(15.0);

    return InkWell(
      onTap: () => pushCategoryMealsPage(context),
      borderRadius: borderRadius,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          gradient: LinearGradient(
            colors: [color.withOpacity(0.7), color],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        padding: const EdgeInsets.all(15.0),
        child: Text(title, style: Theme.of(context).textTheme.headline6),
      ),
    );
  }
}
