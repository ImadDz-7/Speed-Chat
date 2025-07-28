import 'package:flutter/material.dart';
import 'package:speed_chat/widgets/custom_button.dart';
import 'package:speed_chat/widgets/custom_text_field.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2B475E),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            const Spacer(flex: 1),
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
            Row(
              children: const [
                Text(
                  'REGISTER',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const CustomTextField(hintText: 'Email'),
            const SizedBox(height: 10),
            const CustomTextField(hintText: 'Password'),
            const SizedBox(height: 30),
            const CustomButton(text: 'Register'),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already have an account? ',
                  style: TextStyle(color: Colors.white),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}