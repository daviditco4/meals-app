import 'package:flutter/material.dart';

import 'pages/category_meals_page.dart';
import 'pages/meal_details_page.dart';
import 'pages/tabs_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
        '/category-meals': (_) => CategoryMealsPage(),
        '/meal-details': (_) => MealDetailsPage(),
      },
    );
  }
}
