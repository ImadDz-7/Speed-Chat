import 'package:flutter/material.dart';
import 'package:speed_chat/constants.dart';
import 'package:speed_chat/pages/register_page.dart';
import 'package:speed_chat/widgets/custom_button.dart';
import 'package:speed_chat/widgets/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
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
                  'LOGIN',
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
            const CustomButton(text: 'Login'),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don\'t have an account? ',
                  style: TextStyle(color: Colors.white),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'RegisterPage');
                  },
                  child: const Text(
                    'Register',
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
