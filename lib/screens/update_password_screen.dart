import 'package:flutter/material.dart';

class UpdatePasswordScreen extends StatefulWidget {
  @override
  _UpdatePasswordScreenState createState() => _UpdatePasswordScreenState();
}

class _UpdatePasswordScreenState extends State<UpdatePasswordScreen> {
  final TextEditingController _currentPasswordController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _repeatPasswordController = TextEditingController();

  @override
  void dispose() {
    _currentPasswordController.dispose();
    _newPasswordController.dispose();
    _repeatPasswordController.dispose();
    super.dispose();
  }

  void _updatePassword() {
    if (_newPasswordController.text == _repeatPasswordController.text) {
      // Here you would normally call your backend to update the password
      // Since backend integration is removed, we'll just show a success message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Password updated successfully')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Passwords do not match')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update Password'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 20.0),
            Row(
              children: [
                Icon(Icons.info, color: Colors.yellow[700]),
                SizedBox(width: 10.0),
                Expanded(
                  child: Text(
                    'Changing your password regularly reduces your risk of exposure and avoids a number of dangers.',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: _currentPasswordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Current Password',
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: _newPasswordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: _repeatPasswordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Repeat Password',
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            SizedBox(height: 40.0),
            ElevatedButton(
              onPressed: _updatePassword,
              child: Text('Update'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
                primary: Colors.orange,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
