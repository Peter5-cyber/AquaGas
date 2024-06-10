import 'package:flutter/material.dart';
import '../screens/nearby_vendors_screen.dart';


class NearbyVendorsScreen extends StatelessWidget {
  final List<Vendor> vendors = [
    Vendor(name: "Right From Oven", distance: "1.2 km", rating: 4.5, category: "Bread, Cake", priceRange: "\$\$"),
    Vendor(name: "Brown Coffee Shop", distance: "1.5 km", rating: 4.5, category: "Bread, Cake", priceRange: "\$\$"),
    Vendor(name: "Brown Bakery", distance: "1.1 km", rating: 4.5, category: "Bread, Cake", priceRange: "\$\$"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nearby Gas Vendors'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: ListView.builder(
        itemCount: vendors.length,
        itemBuilder: (context, index) {
          return VendorCard(vendor: vendors[index]);
        },
      ),
    );
  }
}

class VendorCard extends StatelessWidget {
  final Vendor vendor;

  VendorCard({required this.vendor});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      child: ListTile(
        contentPadding: EdgeInsets.all(15.0),
        leading: Image.network(
          vendor.imageUrl,
          width: 100.0,
          fit: BoxFit.cover,
        ),
        title: Text(vendor.name, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("${vendor.category} • ${vendor.priceRange}"),
            Text("${vendor.distance} • ★ ${vendor.rating}"),
          ],
        ),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.orange),
        onTap: () {
          // Navigate to vendor details page
        },
      ),
    );
  }
}

class Vendor {
  final String name;
  final String distance;
  final double rating;
  final String category;
  final String priceRange;
  final String imageUrl;

  Vendor({
    required this.name,
    required this.distance,
    required this.rating,
    required this.category,
    required this.priceRange,
    this.imageUrl = 'https://via.placeholder.com/150', // Placeholder image
  });
}
