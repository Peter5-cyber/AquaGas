/*import 'package:flutter/material.dart';
import '../cart.dart';
import 'payment_options_screen.dart';
import  '../screens/home_page.dart';


class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();

}
class _CartPageState extends State<CartPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('My Cart Items'),

      ),

      body: Column(
        children: [
          Expanded(
            child: cart.items.isEmpty
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('No items found in cart.'),
                        SizedBox(height: 20.0),
                        ElevatedButton(
                          onPressed: () {                           Navigator.pushReplacement(
                              context,                             MaterialPageRoute(builder: (context) => HomePage()),

                            );

                          },

                          child: Text('Continue Shopping'),

                          style: ElevatedButton.styleFrom(primary: Colors.green, onPrimary: Colors.white, ),

                        ),

                      ],

                    ),

                  )

                : ListView.builder(
                    itemCount: cart.items.length,
                    itemBuilder: (context, index) {
                      var item = cart.items[index];
                      return ListTile(
                        title: Text(item['title']),
                        subtitle: Text('KES ${item['price']} x ${item['quantity']}'),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: Icon(Icons.remove_circle),
                              onPressed: () {
                                setState(() {                               cart.removeItem(item);

                                });
                              },
                            ),                        Text('${item['quantity']}'),
                            IconButton(
                              icon: Icon(Icons.add_circle),
                              onPressed: () {
                                setState(() {                                 cart.addItem(item);
                                });
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  ),
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Total'),
                    Text('KES ${cart.totalAmount}'),
                  ],

                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PaymentOptionsScreen(),
                      ),
                    );
                  },

             icon:Icon(Icons.receipt_long),
                  label: Text('Confirm Order'),
                  style: ElevatedButton.styleFrom(primary: Colors.green, onPrimary: Colors.white,),

                ),

              ],

            ),

          ),

        ],

      ),

    );

  }

}*/


    
    
    
    
/*import 'package:flutter/material.dart';
import '../cart.dart';
import 'payment_options_screen.dart';
import '../screens/home_page.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  String selectedShippingOption = 'Delivery'; // Default option
  String selectedAddress = '123 Main Street'; // Default address

  List<Map<String, dynamic>> suggestedItems = [
    {'title': 'Suggested Item 1', 'price': 200.0},
    {'title': 'Suggested Item 2', 'price': 300.0},
    {'title': 'Suggested Item 3', 'price': 150.0},
    {'title': 'Suggested Item 4', 'price': 400.0},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('My Cart Items'),
      ),
      body: Column(
        children: [
          Expanded(
            child: cart.items.isEmpty
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('No items found in cart.'),
                        SizedBox(height: 20.0),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => HomePage()),
                            );
                          },
                          child: Text('Continue Shopping'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            onPrimary: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  )
                : ListView.builder(
                    itemCount: cart.items.length,
                    itemBuilder: (context, index) {
                      var item = cart.items[index];
                      return ListTile(
                        title: Text(item['title']),
                        subtitle: Text('KES ${item['price']} x ${item['quantity']}'),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: Icon(Icons.remove_circle),
                              onPressed: () {
                                setState(() {
                                  cart.removeItem(item);
                                });
                              },
                            ),
                            Text('${item['quantity']}'),
                            IconButton(
                              icon: Icon(Icons.add_circle),
                              onPressed: () {
                                setState(() {
                                  cart.addItem(item);
                                });
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'You May Also Like',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10.0),
                Container(
                  height: 150.0,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: suggestedItems.length,
                    itemBuilder: (context, index) {
                      var item = suggestedItems[index];
                      return Container(
                        width: 150.0,
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(item['title']),
                              SizedBox(height: 10.0),
                              Text('KES ${item['price']}'),
                              SizedBox(height: 10.0),
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    cart.addItem({
                                      'title': item['title'],
                                      'price': item['price'],
                                      'quantity': 1,
                                    });
                                  });
                                },
                                child: Text('Add to Cart'),
                                style: ElevatedButton.styleFrom(primary: Colors.orange, onPrimary: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  'Shipping Options',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10.0),
                DropdownButton<String>(
                  value: selectedShippingOption,
                  items: <String>['Delivery', 'Pickup'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedShippingOption = newValue!;
                    });
                  },
                ),
                SizedBox(height: 20.0),
                Text(
                  'Address Details',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  initialValue: selectedAddress,
                  decoration: InputDecoration(
                    labelText: 'Address',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    setState(() {
                      selectedAddress = value;
                    });
                  },
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Total'),
                        Text('KES ${cart.totalAmount}'),
                      ],
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PaymentOptionsScreen(),
                          ),
                        );
                      },
                      icon: Icon(Icons.receipt_long),
                      label: Text('Confirm Order'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        onPrimary: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
*/
    
    


import 'package:flutter/material.dart';
import '../cart.dart';
import 'payment_options_screen.dart';
import '../screens/home_page.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  String selectedAddress = '123 Main Street'; // Default address

  List<Map<String, dynamic>> suggestedItems = [
    {'title': 'Suggested Item 1', 'price': 200.0},
    {'title': 'Suggested Item 2', 'price': 300.0},
    {'title': 'Suggested Item 3', 'price': 150.0},
    {'title': 'Suggested Item 4', 'price': 400.0},
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Future<List<Map<String, dynamic>>> fetchProducts() async {
    await Future.delayed(Duration(seconds: 2)); // Simulate network delay
    return [
      {'title': 'Product 1', 'price': 500.0},
      {'title': 'Product 2', 'price': 700.0},
      {'title': 'Product 3', 'price': 300.0},
      {'title': 'Product 4', 'price': 900.0},
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.purple,
        title: Text('My Cart Items'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'Delivery'),
            Tab(text: 'Pickup'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          buildCartContent(context, 'Delivery'),
          buildCartContent(context, 'Pickup'),
        ],
      ),
    );
  }

  Widget buildCartContent(BuildContext context, String shippingOption) {
    return SingleChildScrollView(
      child: Column(
        children: [
          if (cart.items.isEmpty)
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('No items found in cart.'),
                  SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    child: Text('Continue Shopping'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      onPrimary: Colors.white,
                    ),
                  ),
                ],
              ),
            )
          else
            ListView.builder(
                
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: cart.items.length,
              itemBuilder: (context, index) {
                var item = cart.items[index];
                return ListTile(
                  title: Text(item['title']),
                  subtitle: Text('KES ${item['price']} x ${item['quantity']}'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.remove_circle),
                        onPressed: () {
                          setState(() {
                            cart.removeItem(item);
                          });
                        },
                      ),
                      Text('${item['quantity']}'),
                      IconButton(
                        icon: Icon(Icons.add_circle),
                        onPressed: () {
                          setState(() {
                            cart.addItem(item);
                          });
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'You May Also Like',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10.0),
                Container(
                  height: 150.0,
                  child: FutureBuilder<List<Map<String, dynamic>>>(
                    future: fetchProducts(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Center(child: CircularProgressIndicator());
                      } else if (snapshot.hasError) {
                        return Center(child: Text('Error loading products'));
                      } else {
                        var products = snapshot.data!;
                        return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: products.length,
                          itemBuilder: (context, index) {
                            var item = products[index];
                            return Container(
                              width: 150.0,
                              margin: EdgeInsets.symmetric(horizontal: 10.0),
                              child: Card(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(item['title']),
                                    SizedBox(height: 10.0),
                                    Text('KES ${item['price']}'),
                                    SizedBox(height: 10.0),
                                    ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          cart.addItem({
                                            'title': item['title'],
                                            'price': item['price'],
                                            'quantity': 1,
                                          });
                                        });
                                      },
                                      child: Text('Add to Cart'),
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.orange,
                                        onPrimary: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      }
                    },
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  'Address Details',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  initialValue: selectedAddress,
                  decoration: InputDecoration(
                    labelText: 'Address',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    setState(() {
                      selectedAddress = value;
                    });
                  },
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Total'),
                        Text('KES ${cart.totalAmount}'),
                      ],
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PaymentOptionsScreen(),
                          ),
                        );
                      },
                      icon: Icon(Icons.receipt_long),
                      label: Text('Confirm Order'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        onPrimary: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
