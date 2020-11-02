import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../widgets/titled_list.dart';

class MealDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    final selectedMeal = dummyMeals.singleWhere((meal) => meal.id == mealId);

    return Scaffold(
      appBar: AppBar(title: Text(selectedMeal.name)),
      body: ListView(
        children: [
          Image.network(
            selectedMeal.imageUrl,
            width: double.infinity,
            height: 250.0,
            fit: BoxFit.cover,
          ),
          TitledList(
            title: 'Ingredients',
            width: 200.0,
            children: selectedMeal.recipe.ingredients.map((ingr) {
              return Card(
                color: Theme.of(context).primaryColorLight,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(ingr),
                ),
              );
            }).toList(),
          ),
          TitledList.builder(
            title: 'Steps',
            width: 360.0,
            itemCount: selectedMeal.recipe.steps.length,
            itemBuilder: (_, index) {
              return Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(child: Text('#${index + 1}')),
                    title: Text(selectedMeal.recipe.steps[index]),
                  ),
                  const Divider(height: 1.0),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
