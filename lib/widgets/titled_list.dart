import 'package:flutter/material.dart';

class TitledList extends StatelessWidget {
  const TitledList({
    @required this.title,
    @required this.width,
    @required this.children,
  })  : itemCount = null,
        itemBuilder = null;

  const TitledList.builder({
    @required this.title,
    @required this.width,
    @required this.itemCount,
    @required this.itemBuilder,
  }) : children = null;

  final String title;
  final double width;
  final List<Widget> children;
  final int itemCount;
  final IndexedWidgetBuilder itemBuilder;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(title, style: Theme.of(context).textTheme.headline6),
          Container(
            width: width,
            padding: const EdgeInsets.all(4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: itemBuilder == null
                  ? children
                  : List.generate(
                      itemCount,
                      (index) => itemBuilder(context, index),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
