import 'package:flutter/material.dart';
import 'screens/sign_in_screen.dart';
import 'screens/sign_up_screen.dart';
import 'screens/complete_profile_screen.dart';
import 'screens/home_page.dart';
import 'screens/cart_screen.dart';
import 'screens/order_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => SignInScreen(),
        '/sign_up': (context) => SignUpScreen(),
        '/complete_profile': (context) => CompleteProfileScreen(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
