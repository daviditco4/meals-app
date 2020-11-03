import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      drawer: MainDrawer(),
      body: const Center(child: Text('Filters!')),
    );
  }
}
