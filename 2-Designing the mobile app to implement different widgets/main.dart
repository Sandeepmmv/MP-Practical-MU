//practical no. 2 

import 'package:flutter/material.dart';

void main() {
  runApp(const LayoutApp());
}

class LayoutApp extends StatelessWidget {
  const LayoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(decoration: InputDecoration(labelText: 'Username')),
            const TextField(decoration: InputDecoration(labelText: 'Password')),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement login functionality
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
