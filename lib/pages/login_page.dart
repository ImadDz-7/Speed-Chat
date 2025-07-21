import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2B475E),
      body: Column(
        children: [
          Image.asset(
            'assets/images/fastchat.png',
            width: 220,
          ),
          const Text(
            'Speed Chat',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontFamily: 'Pacifico',
            ),
          ),
          const Text(
            'LOGIN',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
           TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(

              hintText: 'Email',
              hintStyle: TextStyle(
                color: Colors.white,
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
