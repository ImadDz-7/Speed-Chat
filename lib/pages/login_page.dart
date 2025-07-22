import 'package:flutter/material.dart';
import 'package:speed_chat/widgets/custom_button.dart';
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
          const CustomButton(text: 'Login'),
        ],
      ),
    );
  }
}
