import 'package:flutter/material.dart';

import '../widgets/category_meal_item.dart';
import '../dummy_data.dart';

class CategoryMealsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, Object>;
    final categoryId = routeArgs['categoryId'] as String;
    final title = routeArgs['title'] as String;
    final categoryMeals = dummyMeals.where((meal) {
      return meal.categoryIds.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: (_, index) {
          final meal = categoryMeals[index];
          return CategoryMealItem(
            mealName: meal.name,
            mealImageUrl: meal.imageUrl,
            mealDurationInMins: meal.recipe.durationInMins,
            mealDifficulty: meal.recipe.difficulty,
            mealExpensiveness: meal.recipe.expensiveness,
          );
        },
      ),
    );
  }
}
