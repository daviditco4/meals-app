import 'package:flutter/material.dart';

class CategoryMealsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, Object>;
    final title = routeArgs['title'] as String;

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: const Center(child: const Text('The category meals!')),
    );
  }
}
