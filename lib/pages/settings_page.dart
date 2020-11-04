import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  var _glutenFree = false;
  var _lactoseFree = false;
  var _vegan = false;
  var _vegetarian = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      drawer: MainDrawer(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Filters',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                SwitchListTile.adaptive(
                  value: _glutenFree,
                  onChanged: (value) => setState(() => _glutenFree = value),
                  title: const Text('Gluten-free'),
                  subtitle: const Text('Only show gluten-free meals.'),
                ),
                SwitchListTile.adaptive(
                  value: _lactoseFree,
                  onChanged: (value) => setState(() => _lactoseFree = value),
                  title: const Text('Lactose-free'),
                  subtitle: const Text('Only show lactose-free meals.'),
                ),
                SwitchListTile.adaptive(
                  value: _vegan,
                  onChanged: (value) => setState(() => _vegan = value),
                  title: const Text('Vegan'),
                  subtitle: const Text('Only show vegan meals.'),
                ),
                SwitchListTile.adaptive(
                  value: _vegetarian,
                  onChanged: (value) => setState(() => _vegetarian = value),
                  title: const Text('Vegetarian'),
                  subtitle: const Text('Only show vegetarian meals.'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
