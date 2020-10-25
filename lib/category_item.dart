import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem(this.title, this.color);

  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        gradient: LinearGradient(
          colors: [color.withOpacity(0.7), color],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      padding: const EdgeInsets.all(15.0),
      child: Text(title),
    );
  }
}
