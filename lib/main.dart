import 'package:flutter/material.dart';
import 'package:smiling_babies_app/Screens/splash_screen.dart'; // Import your splash screen file
// import 'package:smiling_babies_app/Screens/onboarding.dart'; // Import your onboarding screens file
// import 'package:smiling_babies_app/Screens/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(), // Initially, display the splash screen
    );
  }
}
