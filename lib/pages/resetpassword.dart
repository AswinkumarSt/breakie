import 'package:flutter/material.dart';

class ResetPage extends StatelessWidget {
  const ResetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/icons/image.png'), // Replace with your image
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Container(
              width: 289,
              height: 390,
              padding: const EdgeInsets.only(top: 20, left: 0),
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
                        margin: const EdgeInsets.only(top: 20, left: 0),
                        child: const Image(
                          image: AssetImage('assets/icons/Vector 4.png'),
                        ),
                      ),
                      const Text(
                        'grocery',
                        style: TextStyle(
                            fontFamily: 'Cursive',
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Color(0xFFCB1A27)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Reset Password',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 24, right: 24),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'New Password',
                        hintStyle: TextStyle(
                          color: Colors.grey.withOpacity(0.6),
                          fontSize: 10,
                        ),
                        suffixIcon: const Icon(Icons.remove_red_eye_rounded,
                            color: Colors.grey),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 24, right: 24),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Confirm NewPassword',
                        hintStyle: TextStyle(
                          color: Colors.grey.withOpacity(0.6),
                          fontSize: 10,
                        ),
                        suffixIcon: const Icon(Icons.remove_red_eye_rounded, color: Colors.grey),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
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
                        horizontal: 50,
                      ),
                    ),
                    child: const Text(
                      'Reset',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.pushNamed(context, '/homepage');
                        },
                        icon: Icon(Icons.arrow_back_outlined),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
