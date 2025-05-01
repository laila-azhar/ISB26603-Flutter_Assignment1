import 'package:flutter/material.dart';

class OrderConfirmationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Order Payment')),
      body: Center(
        child: Text(
          'Product Confirmation Page',
          style: TextStyle(color: Theme.of(context).colorScheme.primary),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: OrderConfirmationPage()));
}
