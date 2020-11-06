import 'package:flutter/material.dart';

import '../models/recipe.dart';
import 'meal_info.dart';

class MealItem extends StatelessWidget {
  const MealItem({
    @required this.id,
    @required this.name,
    @required this.imageUrl,
    @required this.durationInMins,
    @required this.difficulty,
    @required this.expensiveness,
  });

  final String id;
  final String name;
  final String imageUrl;
  final int durationInMins;
  final Difficulty difficulty;
  final Expensiveness expensiveness;

  String get difficultyText {
    switch (difficulty) {
      case Difficulty.easy:
        return 'Easy';
      case Difficulty.moderate:
        return 'Moderate';
      case Difficulty.hard:
        return 'Hard';
      default:
        return 'Unknown';
    }
  }

  String get expensivenessText {
    switch (expensiveness) {
      case Expensiveness.cheap:
        return 'Cheap';
      case Expensiveness.considerable:
        return 'Considerable';
      case Expensiveness.expensive:
        return 'Expensive';
      default:
        return 'Unknown';
    }
  }

  void pushDetailsPage(BuildContext context) {
    Navigator.of(context).pushNamed('/meal-details', arguments: id);
  }

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
        onTap: () => pushDetailsPage(context),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(borderRadiusAmount),
                  ),
                  child: Image.network(
                    imageUrl,
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
                      name,
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
                  Expanded(
                    child: MealInfo(Icons.schedule, '$durationInMins min'),
                  ),
                  Expanded(child: MealInfo(Icons.work_outline, difficultyText)),
                  Expanded(
                    child: MealInfo(Icons.attach_money, expensivenessText),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
