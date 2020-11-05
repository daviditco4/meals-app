import 'package:flutter/foundation.dart';

import 'meal.dart';

class Filtering {
  const Filtering({
    @required this.glutenFree,
    @required this.lactoseFree,
    @required this.vegan,
    @required this.vegetarian,
  });

  final bool glutenFree;
  final bool lactoseFree;
  final bool vegan;
  final bool vegetarian;

  bool apply(Meal meal) {
    if ((glutenFree && !meal.isGlutenFree) ||
        (lactoseFree && !meal.isLactoseFree) ||
        (vegan && !meal.isVegan) ||
        (vegetarian && !meal.isVegetarian)) {
      return false;
    }
    return true;
  }
}
