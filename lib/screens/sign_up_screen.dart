/*import 'package:flutter/material.dart';
import 'sign_in_screen.dart'; // Import  '

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
          backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Create Account',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Text(
              'Enter your phone number to create your account. Cheap Yet Effective',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Phone Number',
                prefixIcon: Icon(Icons.phone),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
               //function
               },
              child: Text('Sign Up'),
              style: ElevatedButton.styleFrom(primary: Colors.green),
            ),
            SizedBox(height: 10),
            Text(
              'By signing up, you agree to our Terms & Conditions and Privacy Policy',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              'Or continue with',
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.g_mobiledata),
                  label: Text('Google'),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.facebook),
                  label: Text('Facebook'),
                ),
              ],
            ),
            Spacer(),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignInScreen()),
                );
              },
              child: Text('Already have an account? Sign In'),
            ),
          ],
        ),
      ),
    );
  }
}
*/


/*import 'package:flutter/material.dart';
import 'sign_in_screen.dart'; // Import  '

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
        backgroundColor: Colors.indigoAccent, // Changed color scheme
      ),
      body: Padding(
        padding: EdgeInsets.all(24.0), // Increased padding
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Create Account',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            Text(
              'Enter your phone number to create your account. Cheap Yet Effective',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24),
            TextField(
              decoration: InputDecoration(
                labelText: 'Phone Number',
                prefixIcon: Icon(Icons.phone),
                border: OutlineInputBorder( // Added rounded corners
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
               //function
               },
              child: Text('Sign Up'),
              style: ElevatedButton.styleFrom(
                primary: Colors.green, // Changed button color
                shape: RoundedRectangleBorder( // Added rounded corners
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'By signing up, you agree to our Terms & Conditions and Privacy Policy',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24),
            Text(
              'Or continue with',
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.g_mobiledata),
                  label: Text('Google'),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder( // Added rounded corners
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.facebook),
                  label: Text('Facebook'),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder( // Added rounded corners
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignInScreen()),
                );
              },
              child: Text('Already have an account? Sign In'),
            ),
          ],
        ),
      ),
    );
  }
}
*/




import 'package:flutter/material.dart';
import 'sign_in_screen.dart'; // Import  '

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
        backgroundColor: Colors.indigoAccent, // Changed color scheme
      ),
      body: Padding(
        padding: EdgeInsets.all(24.0), // Increased padding
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Create Account',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            Text(
              'Enter your phone number to create your account. Cheap Yet Effective',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24),
            TextField(
              decoration: InputDecoration(
                labelText: 'Phone Number',
                prefixIcon: Icon(Icons.phone),
                border: OutlineInputBorder( // Added rounded corners
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
               //function
               },
              child: Text('Sign Up'),
              style: ElevatedButton.styleFrom(
                primary: Colors.indigoAccent, // Changed button color
                shape: RoundedRectangleBorder( // Added rounded corners
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'By signing up, you agree to our Terms & Conditions and Privacy Policy',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24),
            Text(
              'Or continue with',
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.g_mobiledata),
                  label: Text('Google'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent, // Changed Google button color
                    shape: RoundedRectangleBorder( // Added rounded corners
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.facebook),
                  label: Text('Facebook'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueAccent, // Changed Facebook button color
                    shape: RoundedRectangleBorder( // Added rounded corners
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 24), // Increased spacing
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignInScreen()),
                );
              },
              child: Text('Already have an account? Sign In'),
            ),
          ],
        ),
      ),
    );
  }
}
