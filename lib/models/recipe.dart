import 'package:flutter/foundation.dart';

enum Difficulty { easy, moderate, hard }
enum Expensiveness { cheap, considerable, expensive }

class Recipe {
  final List<String> ingredients;
  final List<String> steps;
  final int durationInMins;
  final Difficulty difficulty;
  final Expensiveness expensiveness;

  const Recipe({
    @required this.ingredients,
    @required this.steps,
    @required this.durationInMins,
    @required this.difficulty,
    @required this.expensiveness,
  });
}
