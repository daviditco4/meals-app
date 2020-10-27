import 'package:flutter/foundation.dart';

import 'recipe.dart';

class Meal {
  final String id;
  final List<String> categoryIds;
  final String name;
  final String imageUrl;
  final Recipe recipe;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;

  const Meal({
    @required this.id,
    @required this.categoryIds,
    @required this.name,
    @required this.imageUrl,
    @required this.recipe,
    @required this.isGlutenFree,
    @required this.isLactoseFree,
    @required this.isVegan,
    @required this.isVegetarian,
  });
}
