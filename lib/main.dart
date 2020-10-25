import 'package:flutter/material.dart';

import 'categories_page.dart';

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
          headline6: const TextStyle(
            fontFamily: 'Roboto Condensed',
            fontSize: 20.0,
          ),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CategoriesPage(),
    );
  }
}
