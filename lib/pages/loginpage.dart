import 'package:breakie/pages/homepage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: GroceryLoginPage(),
      );
  }
}
class GroceryLoginPage extends StatelessWidget {
  const GroceryLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('Login Page'),
    ),
    body: Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HomePage()),
          );
        },
        child: const Text('Login'),
      ),
    ),
  );
}
}