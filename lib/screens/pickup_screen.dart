import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PickupScreen extends StatelessWidget {
  final LatLng _storeLocation = LatLng(40.7638, -73.9731); // Example coordinates

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pick Up'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 250,
              child: GoogleMap(
                initialCameraPosition: CameraPosition(
                  target: _storeLocation,
                  zoom: 15,
                ),
                markers: {
                  Marker(
                    markerId: MarkerId('storeLocation'),
                    position: _storeLocation,
                  ),
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Right From Oven',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber),
                      Text('4.6 (678) Bread, Cake '),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Pick Up Details',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.location_pin),
                      SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          'You can pick up your order at: 4235 Royal Messa Verde, Yumme Restaurant',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Today Operating Hours',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Tuesday'),
                      Row(
                        children: [
                          Icon(Icons.access_time),
                          SizedBox(width: 8),
                          Text('10:00 - 15:00'),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.info, color: Colors.blue),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            'Please show your QR Code within transaction checkout to pick up your order.',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  Center(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        // Handle button press
                      },
                      icon: Icon(Icons.map),
                      label: Text('Show on the map'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
