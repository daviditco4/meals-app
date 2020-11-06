import 'package:flutter/material.dart';

import '../models/meal.dart';
import 'meal_item.dart';

class MealsList extends StatelessWidget {
  const MealsList(this.meals);

  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: meals.length,
      itemBuilder: (_, index) {
        final meal = meals[index];
        return MealItem(
          id: meal.id,
          name: meal.name,
          imageUrl: meal.imageUrl,
          durationInMins: meal.recipe.durationInMins,
          difficulty: meal.recipe.difficulty,
          expensiveness: meal.recipe.expensiveness,
        );
      },
    );
  }
}
