import 'package:flutter/material.dart';

class reservationPage extends StatelessWidget {
  const reservationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Reservation')),
      body: Center(
        child: Text(
          'Reservation Input here',
          style: TextStyle(color: Theme.of(context).colorScheme.primary),
        ),
      ),
    );
  }
}
