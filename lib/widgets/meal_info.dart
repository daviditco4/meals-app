import 'package:flutter/material.dart';

class MealInfo extends StatelessWidget {
  const MealInfo(this.infoIconData, this.infoText);

  final IconData infoIconData;
  final String infoText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(infoIconData, size: 28.0),
          const SizedBox(height: 4.0),
          FittedBox(
            child: Text(infoText, style: const TextStyle(fontSize: 18.0)),
          ),
        ],
      ),
    );
  }
}
