import 'package:flutter/material.dart';
import 'package:speed_chat/constants.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: kPrimaryColor,
      ),
      child: Center(
        child: Text(
          'Hello there :D',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
