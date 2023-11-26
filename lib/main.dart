import 'package:first_ecommerce/Screens/sign_in_screen.dart';
import 'package:first_ecommerce/Screens/sign_up_screen.dart';
import 'package:first_ecommerce/Screens/verification_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignInScreen(),
      routes: {
        "sign_in_page":(context)=>SignInScreen(),
        "sign_up_screen":(context)=>SignUpScreen(),
        "verfication_screen":(context)=>VerficationScreen()
      },
    );
  }
}


