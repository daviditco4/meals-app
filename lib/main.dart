import 'package:flutter/material.dart';

import 'dummy_data.dart';
import 'models/filtering.dart';
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

  void _setAvailableMeals(Filtering filtering) {
    setState(() {
      _currentFiltering = filtering;
      _availableMeals = dummyMeals.where((meal) {
        return _currentFiltering.apply(meal);
      }).toList();
    });
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
        '/': (_) => TabsPage(),
        '/settings': (_) => SettingsPage(_currentFiltering, _setAvailableMeals),
        '/category-meals': (_) => CategoryMealsPage(_availableMeals),
        '/meal-details': (_) => MealDetailsPage(),
      },
    );
  }
}
