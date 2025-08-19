import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:speed_chat/constants.dart';
import 'package:speed_chat/helper/show_snack_bar.dart';
import 'package:speed_chat/pages/chat_page.dart';
import 'package:speed_chat/pages/register_page.dart';
import 'package:speed_chat/widgets/custom_button.dart';
import 'package:speed_chat/widgets/custom_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  static String id = 'LoginPage';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isLoading = false;
  String? email;
  String? password;
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Form(
            key: formKey,
            child: ListView(
              children: [
                const SizedBox(height: 50),
                Image.asset(
                  kLogo,
                  width: 220,
                  height: 130,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Speed Chat',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: 'Pacifico',
                      ),
                    ),
                  ],
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
                CustomTextField(
                  onChanged: (data) {
                    email = data;
                  },
                  hintText: 'Email',
                ),
                const SizedBox(height: 10),
                CustomTextField(
                  onChanged: (data) {
                    password = data;
                  },
                  hintText: 'Password',
                ),
                const SizedBox(height: 30),
                CustomButton(
                  onTap: () async {
                    if (formKey.currentState!.validate()) {
                      isLoading = true;
                      setState(() {});
                      try {
                        await loginUser();
                        Navigator.pushNamed(context, ChatPage.id);
                        showSnackBar(
                          context: context,
                          message: 'Login successfully',
                        );
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'user-not-found') {
                          showSnackBar(
                            context: context,
                            message: 'No user found for that email.',
                          );
                        } else if (e.code == 'wrong-password') {
                          showSnackBar(
                            context: context,
                            message: 'Wrong password provided for that user.',
                          );
                        }
                      } catch (e) {
                        showSnackBar(
                          context: context,
                          message: 'Oops there was an error, please try again!',
                        );
                      }
                      isLoading = false;
                      setState(() {});
                    }
                  },
                  text: 'Login',
                ),
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
                        Navigator.pushNamed(context, RegisterPage.id);
                      },
                      child: const Text(
                        'Register',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> loginUser() async {
    var auth = FirebaseAuth.instance;
    UserCredential user = await auth.signInWithEmailAndPassword(
      email: email!,
      password: password!,
    );
  }
}
