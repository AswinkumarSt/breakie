import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GroceryHomePage(),
    );
  }
}

class GroceryHomePage extends StatelessWidget {
  const GroceryHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/icons/image.png'), // Replace with your image
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Login Card
          Center(
            child: Container(
              width: 250,
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.9),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 20,left: 0),
                        child: const Image(
                          image: AssetImage('assets/icons/Vector 4.png'),
                        ),
                      ),
                      // Logo
                      const Text(
                        'grocery',
                        style: TextStyle(
                          fontFamily: 'Cursive',
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  // Login text
                  const Text(
                    'Already have an account? Then Login.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 7, color: Colors.black54),
                  ),
                  const SizedBox(height: 20),
                  // Login Button
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, '/loginpage');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 40,
                      ),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Sign-up text
                  const Text(
                    'Don\'t have an account? Create an account.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 7, color: Colors.black54),
                  ),
                  const SizedBox(height: 20),
                  // Sign-up Button
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 40,
                      ),
                    ),
                    child: const Text(
                      'Sign-up',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
