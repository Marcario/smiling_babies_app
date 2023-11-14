// order_screen.dart

import 'package:flutter/material.dart';

class order_screen extends StatelessWidget {
  final String itemName;

  order_screen({required this.itemName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Place Order'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Item: $itemName',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),
            // Add more fields for order details (e.g., quantity, delivery address, etc.)
            TextField(
              decoration: InputDecoration(labelText: 'Quantity'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Implement order placement logic here
                // You can send the order details to a backend service
                // or handle the order locally depending on your requirements.
                // For simplicity, I'll just navigate back to the previous screen.
                Navigator.pop(context);
              },
              child: Text('Place Order'),
            ),
          ],
        ),
      ),
    );
  }
}
