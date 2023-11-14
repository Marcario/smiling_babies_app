import 'package:flutter/material.dart';
import 'package:smiling_babies_app/Screens/signup.dart';
import 'package:smiling_babies_app/screens/homepage.dart'; 
// Import your sign-up screen file

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _login(BuildContext context) {
    // Perform authentication checks here using your logic
 
    final enteredEmail = _emailController.text;
    final enteredPassword = _passwordController.text;

    if (enteredEmail == 'example@gmail.com' && enteredPassword == 'password') {
      // Successful login
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => homepage()));
      _showSnackBar(context, 'Login Successful', Colors.green);
    } else {
      // Failed login attempt
      _showSnackBar(context, 'Invalid credentials. Please try again.', Colors.red);
    }
  }

  void _showSnackBar(BuildContext context, String message, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      backgroundColor: color,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  _login(context);
                },
                child: Text('Login'),
              ),
              SizedBox(height: 16.0),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => signup()));
                },
                child: Text('Don\'t have an account? Sign Up'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:smiling_babies_app/Screens/signup.dart';
// import 'package:smiling_babies_app/screens/homepage.dart'; // Import your home page file
// // Import your sign-up screen file

// class LoginScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Login'),
//       ),
      
//       backgroundColor: Colors.blueGrey, // Set the background color
//       body: Center( // Center the contents vertically and horizontally
//         child: Padding(
//           padding: EdgeInsets.all(16.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
//             children: [
//               TextField(
//                 decoration: InputDecoration(
//                   labelText: 'Email',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(12.0), // Set border radius
//                   ),
//                   fillColor: Colors.white, // Set the text field background color
//                   filled: true,
//                 ),
//               ),
//               SizedBox(height: 16.0),
//               TextField(
//                 obscureText: true, //  for password fields
//                 decoration: InputDecoration(
//                   labelText: 'Password',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(12.0), //  border radius
//                   ),
//                   fillColor: Colors.white, //  text field background color
//                   filled: true,
//                 ),
//               ),
//               SizedBox(height: 16.0),
//               ElevatedButton(
//                 onPressed: () {
                 
//                   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => homepage()));
//                 },
//                 child: Text('Login'),
//               ),
//               SizedBox(height: 16.0),
//               TextButton(
//                 onPressed: () {
//                   // Navigate to the sign-up screen
//                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => signup()));
//                 },
//                 child: Text('Don\'t have an account? Sign Up'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
