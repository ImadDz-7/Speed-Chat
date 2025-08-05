import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:speed_chat/firebase_options.dart';
import 'package:speed_chat/pages/login_page.dart';
import 'package:speed_chat/pages/register_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const SpeedChat());
}

class SpeedChat extends StatelessWidget {
  const SpeedChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        LoginPage.id : (context) => LoginPage(),
        RegisterPage.id : (context) => RegisterPage(),
      },
      initialRoute: LoginPage.id,
    );
  }
}