// track_order_screen.dart
import 'package:flutter/material.dart';

class TrackOrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Track Order'),
      ),
      body: Center(
        child: Text('Tracking your order...'),
      ),
    );
  }
}
