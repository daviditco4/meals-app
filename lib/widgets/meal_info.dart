import 'package:flutter/material.dart';

import '../models/recipe.dart';

class MealInfo extends StatelessWidget {
  const MealInfo(this.info);

  final dynamic info;

  IconData get infoIcon {
    switch (info.runtimeType) {
      case int:
        return Icons.schedule;
      case Difficulty:
        return Icons.work_outline;
      case Expensiveness:
        return Icons.attach_money;
      default:
        return null;
    }
  }

  String get infoText {
    switch (info.runtimeType) {
      case int:
        return '$info min';
      case Difficulty:
      case Expensiveness:
        return '$info'.split('.').last.replaceFirstMapped(
              new RegExp('.'),
              (match) => match.group(0).toUpperCase(),
            );
      default:
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(infoIcon, size: 28.0),
          const SizedBox(height: 4.0),
          FittedBox(
            child: Text(infoText, style: const TextStyle(fontSize: 18.0)),
          ),
        ],
      ),
    );
  }
}
