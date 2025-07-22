import 'package:flutter/material.dart';
import 'package:speed_chat/widgets/custom_text_field.dart';

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
          const CustomTextField(hintText: 'Email'),
          const CustomTextField(hintText: 'Password'),
          Container(
            width: double.infinity,
            height: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            child: const Center(
              child: Text(
                'Login',
                style: TextStyle(
                  color: Color(0xff2B475E),
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
