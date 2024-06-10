/*import 'package:flutter/material.dart';

class PaymentConfirmationScreen extends StatelessWidget {
  final String paymentOption;

  PaymentConfirmationScreen({required this.paymentOption});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Payment Confirmation'),
      ),
      body: Center(
        child: Text('Payment Successful using $paymentOption'),
      ),
    );
  }
}*/





// payment_confirmation_screen.dart
import 'package:flutter/material.dart';

class PaymentConfirmationScreen extends StatelessWidget {
  final String paymentOption;

  PaymentConfirmationScreen({required this.paymentOption});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Payment Confirmation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Payment Successful using $paymentOption'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (paymentOption == 'Pickup') {
                  Navigator.pushNamed(context, '/pickup');
                } else if (paymentOption == 'Home Delivery') {
                  Navigator.pushNamed(context, '/track_order');
                }
              },
              child: Text('Proceed'),
            ),
          ],
        ),
      ),
    );
  }
}
