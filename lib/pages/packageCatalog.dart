import 'package:flutter/material.dart';

// import '/common/theme.dart';

class PackageCatalogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Package Catalog')),
      body: Center(
        child: Text(
          'Welcome to the Package Catalog!',
          style: TextStyle(color: Theme.of(context).colorScheme.primary),
        ),
      ),
    );
  }
}
