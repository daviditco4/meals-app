import 'package:flutter/material.dart';

import 'dummy_data.dart';
import 'models/filtering.dart';
import 'models/meal.dart';
import 'pages/category_meals_page.dart';
import 'pages/meal_details_page.dart';
import 'pages/settings_page.dart';
import 'pages/tabs_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _currentFiltering = Filtering(
    glutenFree: false,
    lactoseFree: false,
    vegan: false,
    vegetarian: false,
  );
  var _availableMeals = dummyMeals;
  List<Meal> _favoriteMeals = [];

  void _setAvailableMeals(Filtering filtering) {
    setState(() {
      _currentFiltering = filtering;
      _availableMeals = dummyMeals.where((meal) {
        return _currentFiltering.apply(meal);
      }).toList();
    });
  }

  void _toggleFavorite(String mealId) {
    final favMealIdx = _favoriteMeals.indexWhere((meal) => meal.id == mealId);

    setState(() {
      if (favMealIdx < 0) {
        _favoriteMeals.add(
          dummyMeals.firstWhere((meal) => meal.id == mealId),
        );
      } else {
        _favoriteMeals.removeAt(favMealIdx);
      }
    });
  }

  bool _isFavorite(String mealId) {
    return _favoriteMeals.any((meal) => meal.id == mealId);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals App',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        primaryColorBrightness: Brightness.light,
        fontFamily: 'Raleway',
        textTheme: const TextTheme(
          headline6: TextStyle(
            fontFamily: 'Roboto Condensed',
            fontSize: 20.0,
          ),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/': (_) => TabsPage(_favoriteMeals),
        '/settings': (_) => SettingsPage(_currentFiltering, _setAvailableMeals),
        '/category-meals': (_) => CategoryMealsPage(_availableMeals),
        '/meal-details': (_) => MealDetailsPage(_toggleFavorite, _isFavorite),
      },
    );
  }
}
