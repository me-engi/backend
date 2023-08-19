import 'package:flutter/material.dart';

class PaymentConfirmationPage extends StatelessWidget {
  final String paymentSlipUrl; // URL to the payment slip

  PaymentConfirmationPage({required this.paymentSlipUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Confirmation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.check_circle,
              color: Colors.green,
              size: 100,
            ),
            SizedBox(height: 20),
            Text(
              'Payment Successful!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Thank you for your payment.'),
            SizedBox(height: 20),
            Image.network(
              paymentSlipUrl, // Display the payment slip image using the provided URL
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
