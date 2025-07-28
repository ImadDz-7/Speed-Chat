import 'package:flutter/material.dart';
import 'package:speed_chat/pages/login_page.dart';
import 'package:speed_chat/pages/register_page.dart';

void main() {
  runApp(const SpeedChat());
}

class SpeedChat extends StatelessWidget {
  const SpeedChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'LoginPage' : (context) => LoginPage(),
        'RegisterPage' : (context) => RegisterPage(),
      },
      initialRoute: 'LoginPage',
    );
  }
}