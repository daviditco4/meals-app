import 'package:flutter/material.dart';

import '../models/filtering.dart';
import '../widgets/main_drawer.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage(this.currentFiltering, this.setAvailableMeals);

  final Filtering currentFiltering;
  final Function setAvailableMeals;

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _glutenFree;
  bool _lactoseFree;
  bool _vegan;
  bool _vegetarian;

  @override
  void initState() {
    super.initState();
    _glutenFree = widget.currentFiltering.glutenFree;
    _lactoseFree = widget.currentFiltering.lactoseFree;
    _vegan = widget.currentFiltering.vegan;
    _vegetarian = widget.currentFiltering.vegetarian;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: () {
              widget.setAvailableMeals(
                Filtering(
                  glutenFree: _glutenFree,
                  lactoseFree: _lactoseFree,
                  vegan: _vegan,
                  vegetarian: _vegetarian,
                ),
              );
            },
          ),
        ],
      ),
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
