import 'package:flutter/material.dart';
import 'cart_screen.dart';
import '../cart.dart';
import 'order_screen.dart'; // Import the order screen
import 'payment_options_screen.dart';
//import 'products_screen.dart';
import 'profile_screen.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AquaGas'),
      //  backgroundColor: Colors.purple,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Handle search
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartPage()),
              );
            },
          ),
          
        ],
      ),
        
     /* drawer: Drawer(
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
            ListTile(
              title: Text('Orders'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OrderScreen()), // Navigate to the order screen
                );
              },
            ),
          ],
        ),
      ),*/
        
        
        drawer: Drawer(
        child: ProfileScreen(), // This uses the ProfileScreen as the content of the drawer
      ),
        
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Home delivery available from 7.00am to 8.00pm',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              physics: NeverScrollableScrollPhysics(),
              children: [
                _buildProductCard('6kg Regulator', 825.00),
                _buildProductCard('13kg Regulator', 750.00),
                _buildProductCard('Burner', 830.00),
                _buildProductCard('Grill', 320.00),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Nearby',
          ),
         BottomNavigationBarItem(
           icon: Icon(Icons.shopping_cart),
            label: 'Cart',
         ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long),
            label: 'Orders',
          ),
        ],
        currentIndex: 0,
        unselectedItemColor: Colors.green,
        selectedItemColor: Colors.purple,
        onTap: (index) {
          if (index == 0) {
            // Navigate to home
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CartPage()),
            );
          } else if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OrderScreen()),
            );
          }
        },
      ),
    );
  }

  Widget _buildProductCard(String title, double price) {
    return Card(
      child: Column(
        children: [
          Expanded(
            child: Center(
              child: Text(title),
            ),
          ),
          Text('KES $price'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    cart.addItem({'title': title, 'price': price});
                  });
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('$title added to cart')),
                  );
                },
                child: Text('Add to cart'),
                style: ElevatedButton.styleFrom(primary: Colors.green, onPrimary:Colors.white,),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CartPage(),
                    ),
                  );
                },
                child: Text('Buy Now'),
                style: ElevatedButton.styleFrom(primary: Colors.green, onPrimary:Colors.white,),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
