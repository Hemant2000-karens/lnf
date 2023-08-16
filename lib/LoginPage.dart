import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'Email'),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(labelText: 'Password'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => _signInWithEmailAndPassword(),
                child: Text('Login'),
              ),
              // Other UI components like forgot password link, etc.
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _signInWithEmailAndPassword() async {
    final email = _emailController.text;
    final password = _passwordController.text;

    try {
      final userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      final user = userCredential.user;
      print('User signed in: ${user.email}');
    } catch (e) {
      print('Error: $e');
      // Handle login error here
    }
  }

  // You can define more methods for authentication, password reset, etc.
}
