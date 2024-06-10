import 'package:flutter/material.dart';
import 'update_password_screen.dart';
import 'nearby_vendors_screen.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 20.0),
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage('https://search.app.goo.gl/67mmQ1r'), // Replace with actual image URL
          ),
          SizedBox(height: 10.0),
          Text(
            'Peter Maina',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          Text(
            '9 May 1998',
            style: TextStyle(color: Colors.grey, fontSize: 16),
          ),
          SizedBox(height: 30.0),
          _buildProfileOption(
            icon: Icons.notifications,
            text: 'Notifications',
            trailing: CircleAvatar(
              radius: 12,
              backgroundColor: Colors.red,
              child: Text(
                '3',
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
            onTap: () {
              // Handle notifications tap
            },
          ),
          _buildProfileOption(
            icon: Icons.lock,
            text: 'Password Update',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UpdatePasswordScreen()),
              );
            },
          ),
          _buildSectionHeader('Geography'),
          _buildProfileOption(
            icon: Icons.location_on,
            text: 'Change location',
            onTap: () {
              // Handle change location tap
            },
          ),
          _buildProfileOption(
            icon: Icons.language,
            text: 'Change language',
            onTap: () {
              // Handle change language tap
            },
          ),
          _buildSectionHeader('Membership'),
          _buildProfileOption(
            icon: Icons.card_membership,
            text: 'Loyalty Cards',
            onTap: () {
              // Handle loyalty cards tap
            },
          ),
          _buildProfileOption(
            icon: Icons.group,
            text: 'Membership',
            onTap: () {
              // Handle membership tap
            },
          ),
          _buildProfileOption(
            icon: Icons.school,
            text: 'Certificates',
            onTap: () {
              // Handle certificates tap
            },
          ),
          _buildSectionHeader('More Options'),
          _buildProfileOption(
            icon: Icons.info,
            text: 'About Us',
            onTap: () {
              // Handle About Us tap
            },
          ),
          _buildProfileOption(
            icon: Icons.store,
            text: 'Nearby Vendors',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NearbyVendorsScreen()),
              );
            },
          ),
          _buildProfileOption(
            icon: Icons.account_box,
            text: 'Accounts',
            onTap: () {
              // Handle Accounts tap
            },
          ),
          SizedBox(height: 30.0),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.orange,
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
            ),
            onPressed: () {
              // Handle log out button press
            },
            child: Text(
              'Log out',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileOption({
    required IconData icon,
    required String text,
    Widget? trailing,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.black),
      title: Text(text),
      trailing: trailing ?? Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }

  Widget _buildSectionHeader(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
