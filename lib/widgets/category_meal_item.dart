import 'package:flutter/material.dart';

import '../models/recipe.dart';

class CategoryMealItem extends StatelessWidget {
  const CategoryMealItem({
    @required this.mealName,
    @required this.mealImageUrl,
    @required this.mealDurationInMins,
    @required this.mealDifficulty,
    @required this.mealExpensiveness,
  });

  final String mealName;
  final String mealImageUrl;
  final int mealDurationInMins;
  final Difficulty mealDifficulty;
  final Expensiveness mealExpensiveness;

  @override
  Widget build(BuildContext context) {
    const borderRadiusAmount = 16.0;

    return Card(
      margin: const EdgeInsets.all(10.0),
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadiusAmount),
      ),
      child: InkWell(
        onTap: () {},
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(borderRadiusAmount),
                  ),
                  child: Image.network(
                    mealImageUrl,
                    width: double.infinity,
                    height: 250.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
