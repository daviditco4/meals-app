import 'package:flutter/material.dart';

import '../models/meal.dart';
import '../widgets/meals_list.dart';

class CategoryMealsPage extends StatelessWidget {
  const CategoryMealsPage(this.availableMeals);

  final List<Meal> availableMeals;

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, Object>;
    final categoryId = routeArgs['categoryId'] as String;
    final title = routeArgs['title'] as String;
    final categoryMeals = availableMeals.where((meal) {
      return meal.categoryIds.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: MealsList(categoryMeals),
    );
  }
}
