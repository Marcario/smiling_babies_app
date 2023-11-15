import 'package:flutter/material.dart';
import 'package:smiling_babies_app/screens/homepage.dart'; // Import your home page file

class signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      backgroundColor: Colors.lightBlueAccent, // Set the background color
      body: Center( // Center the contents vertically and horizontally
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0), // Set border radius
                  ),
                  fillColor: Colors.white, // Set the text field background color
                  filled: true,
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                obscureText: true, // Use this for password fields
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0), // Set border radius
                  ),
                  fillColor: Colors.white, // Set the text field background color
                  filled: true,
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Add your sign-up logic here
                  // For now, navigate to the home page after sign-up
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => homepage()));
                },
                child: Text('Sign Up'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
