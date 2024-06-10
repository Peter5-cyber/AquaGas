import 'package:flutter/material.dart';
import '../cart.dart';
import 'payment_confirmation_screen.dart';

class PaymentOptionsScreen extends StatefulWidget {
  @override
  _PaymentOptionsScreenState createState() => _PaymentOptionsScreenState();
}

class _PaymentOptionsScreenState extends State<PaymentOptionsScreen> {
  bool termsAccepted = false;
  String selectedPaymentOption = '';
    String _selectedDeliveryOption = 'Home';
 // String? _selectedDeliverySlot;
  bool showSummary = false;
  String phoneNumber = '';
  String deliveryMethod = 'home';
  double deliveryFee = 0.0;
  List<String> savedCards = ['**** **** **** 1234', '**** **** **** 5678'];
  String newCardNumber = '';

  void _showSummaryScreen() {
    setState(() {
      showSummary = true;
      if (deliveryMethod == 'home') {
        deliveryFee = 200.0;
      } else {
        deliveryFee = 0.0;
      }
    });
  }

  void _confirmPayment() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirm Payment'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Payment Method: $selectedPaymentOption'),
              Text('Amount to Pay: KES ${cart.totalAmount + deliveryFee}'),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaymentConfirmationScreen(
                      paymentOption: selectedPaymentOption,
                    ),
                  ),
                );
              },
              child: Text('Proceed'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
      appBar: AppBar(
       // backgroundColor: Colors.purple,
        title: Text(showSummary ? 'Summary' : 'Pay for AquaGas'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            if (showSummary) {
              setState(() {
                showSummary = false;
              });
            } else {
              Navigator.of(context).pop();
            }
          },
        ),
          bottom: TabBar(
            tabs: [         
              Tab(text: 'Home Delivery'),
              Tab(text: 'Pickup'),
            ],
          ),
      ),
      body: Padding(
       padding: EdgeInsets.all(16.0),
       child: showSummary ? _buildSummaryScreen() : _buildPaymentOptionsScreen(),
      ),
    ),
    );
  } 
    
  Widget _buildPaymentOptionsScreen() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.green[100],
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Apply AquaGas wallet?",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  onPressed: () {
                    // handle apply now
                  },
                  child: Text('Apply Now'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    onPrimary: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.0),
          Text(
            'Other Payment Options',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(height: 10.0),
          _buildPaymentOptionTile(
            '../assets/mpesa_logo.png',
            'MPESA',
            'Payments are made with MPESA',
            selectedPaymentOption == 'MPESA',
            () {
              setState(() {
                selectedPaymentOption = 'MPESA';
              });
            },
          ),
          _buildPaymentOptionTile(
            null,
            'Visa/Mastercard',
            'Pay with your Visa or Mastercard card',
            selectedPaymentOption == 'Visa/Mastercard',
            () {
              setState(() {
                selectedPaymentOption = 'Visa/Mastercard';
              });
            },
          ),
          if (selectedPaymentOption == 'MPESA')
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter MPESA Phone Number',
              ),
              keyboardType: TextInputType.phone,
              onChanged: (value) {
                setState(() {
                  phoneNumber = value;
                });
              },
            ),
          if (selectedPaymentOption == 'Visa/Mastercard') ...[
            for (var card in savedCards)
              ListTile(
                title: Text(card),
                leading: Icon(Icons.credit_card),
                trailing: Icon(Icons.check_circle, color: Colors.green),
                onTap: () {
                  setState(() {
                    newCardNumber = card;
                  });
                },
              ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Add New Card Number',
                hintText: 'Enter card number',
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  newCardNumber = value;
                });
              },
            ),
          ],
            // Delivery Methods
          SizedBox(height: 20.0),
          Text(
            'Delivery Method',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
                   
   SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      deliveryMethod = 'home';
                    });
                  },

                  style: ElevatedButton.styleFrom(
                    primary: deliveryMethod == 'home' ? Colors.green : Colors.grey,
                  ),
                  child: Text('Home Delivery (KES 200)'),
                ),

                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      deliveryMethod = 'pickup';
                    });
                  },

                    style: ElevatedButton.styleFrom(
                    primary: deliveryMethod == 'pickup' ? Colors.green : Colors.grey,
                  ),
                  child: Text('Pickup (Free)'),
                ),
                  
              ],

            ),

            SizedBox(height: 20.0),

            Text(

              'Selected Method: ${deliveryMethod == 'home' ? 'Home Delivery (KES 200)' : 'Pickup (Free)'}',

              style: TextStyle(fontSize: 16),

            ),

     // Terms & Conditions      
            
          SizedBox(height: 20.0),
          CheckboxListTile(
            title: Text('I accept the terms and conditions'),
            value: termsAccepted,
            onChanged: (value) {
              setState(() {
                termsAccepted = value!;
              });
            },
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: termsAccepted ? _showSummaryScreen : null,
            child: Text('Proceed to Summary'),
            style: ElevatedButton.styleFrom(primary: Colors.green, onPrimary: Colors.white,),
          ),
        ],
      ),
    );
  }

  Widget _buildSummaryScreen() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ListTile(
          title: Text('Total Products Amount'),
          subtitle: Text('KES ${cart.totalAmount}'),
        ),
        ListTile(
          title: Text('Delivery Fee'),
          subtitle: Text('KES $deliveryFee'),
        ),
        ListTile(
          title: Text('Total Amount to Pay'),
          subtitle: Text('KES ${cart.totalAmount + deliveryFee}'),
        ),
        SizedBox(height: 20.0),
        ElevatedButton(
          onPressed: _confirmPayment,
          child: Text('Confirm Payment'),
          style: ElevatedButton.styleFrom(primary: Colors.green, onPrimary: Colors.white,),
        ),
      ],
    );
  }

  Widget _buildPaymentOptionTile(
    String? assetPath,
    String title,
    String subtitle,
    bool isSelected,
    VoidCallback onTap,
  ) {
    return ListTile(
      leading: assetPath != null ? Image.asset(assetPath, width: 50.0) : null,
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: isSelected ? Icon(Icons.check_circle, color: Colors.green) : null,
      onTap: onTap,
    );
  }
}
  




