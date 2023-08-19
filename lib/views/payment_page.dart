import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentPage extends StatelessWidget {
  final double amount; // Amount to be paid

  PaymentPage({required this.amount});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Options'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Total Amount: \$${amount.toStringAsFixed(2)}', // Display the amount to be paid
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text('Select a payment method:'),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Implement the logic for payment via Razorpay
                // Example: _handleRazorpayPayment();
              },
              child: Text('Pay with Razorpay'),
            ),
          ],
        ),
      ),
    );
  }
}
