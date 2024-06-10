import 'package:flutter/material.dart';
import '../screens/cart_screen.dart';
//import '../widgets/drawer.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Text('Menu'),
            decoration: BoxDecoration(
              color: Colors.purple,
            ),
          ),
          ListTile(
            title: Text('Home'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Nearby'),
            onTap: () {
              // Navigate to nearby page
            },
          ),
          ListTile(
            title: Text('Cart'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
