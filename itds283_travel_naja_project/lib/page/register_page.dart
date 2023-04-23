import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  FirebaseAuth _auth = FirebaseAuth.instance;
  String _errorMessage = '';

  void _onRegisterButtonPressed() async {
  String email = _emailController.text;
  String password = _passwordController.text;
  String confirmPassword = _confirmPasswordController.text;

  if (email.isNotEmpty && password.isNotEmpty && confirmPassword.isNotEmpty) {
    if (password == confirmPassword) {
      try {
        // Create a new user account with Firebase authentication
        UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );
        User? user = result.user;

        // You can perform additional actions with the user object here,
        // such as updating user profile information, sending email verification, etc.

        print('User registered successfully: ${user!.email}');
        // Navigate to the next page after successful registration
        // You can customize this based on your application flow
      } on FirebaseAuthException catch (e) {
        setState(() {
          _errorMessage = e.message!; // Update error message if any
        });
      }
    } else {
      // Show a Snackbar with error message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Password and Confirm Password do not match'),
        ),
      );
    }
  } else {
    setState(() {
      _errorMessage = 'All fields are required';
    });
  }
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email',
                prefixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _confirmPasswordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: _onRegisterButtonPressed,
              child: Text('REGISTER'),
            ),
            SizedBox(height: 16),
            Text(
              _errorMessage,
              style: TextStyle(color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
