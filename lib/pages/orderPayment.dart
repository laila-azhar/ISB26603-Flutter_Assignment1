import 'package:flutter/material.dart';

class OrderPaymentPage extends StatelessWidget {
  const OrderPaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Order Payment')),
      body: Center(
        child: Text(
          'Order Payment Page',
          style: TextStyle(color: Theme.of(context).colorScheme.primary),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: OrderPaymentPage()));
}
