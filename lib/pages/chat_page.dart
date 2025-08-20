import 'package:flutter/material.dart';
import 'package:speed_chat/constants.dart';
import 'package:speed_chat/widgets/chat_bubble.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  static String id = 'ChatPage'; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(kLogo, height: 50,),
            const Text('Chat'),
          ],
        ),
      ),
      body: ChatBubble(),
    );
  }
}