import 'package:flutter/material.dart';

import 'pages/categories_page.dart';
import 'pages/category_meals_page.dart';

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
        '/': (_) => CategoriesPage(),
        '/category-meals': (_) => CategoryMealsPage(),
      },
    );
  }
}
