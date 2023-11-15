import 'package:flutter/material.dart';
import 'dart:async'; // Import the dart:async library
import 'onboarding.dart'; // Import your onboarding screens file

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Add a timer to delay the transition to the onboarding screens
    Timer(Duration(seconds: 6), () {
      // Navigate to the onboarding screens
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => OnboardingScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent, // Background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/babylogo.png', // Replace with the path to your baby graphic
              width: 150, // Adjust the size as needed
              height: 150,
            ),
            SizedBox(height: 18),
            Text(
              ' WELCOME TO SMILING BABIES UGANDA',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
