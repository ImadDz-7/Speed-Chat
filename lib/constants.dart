import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF2B475E);
const kLogo = 'assets/images/fastchat.png';
const kMessagesCollection = 'messages';


  Future<void> registerUser({String? email, String? password}) async {
    var auth = FirebaseAuth.instance;
    UserCredential user =
        await auth.createUserWithEmailAndPassword(
      email: email!,
      password: password!,
    );
  }