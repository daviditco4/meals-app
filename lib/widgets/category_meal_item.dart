import 'package:flutter/material.dart';

import '../models/recipe.dart';
import 'meal_info.dart';

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
      elevation: 4.0,
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
                Positioned(
                  bottom: 20.0,
                  right: 5.0,
                  child: Container(
                    width: 300.0,
                    color: Colors.black54,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 5.0,
                    ),
                    child: Text(
                      mealName,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                      ),
                      maxLines: 4,
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(child: MealInfo(mealDurationInMins)),
                  Expanded(child: MealInfo(mealDifficulty)),
                  Expanded(child: MealInfo(mealExpensiveness)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
