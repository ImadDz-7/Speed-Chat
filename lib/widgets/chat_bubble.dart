import 'package:flutter/material.dart';
import 'package:speed_chat/constants.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(16),
          bottomRight: Radius.circular(16),
          topLeft: Radius.circular(16),
        ),
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
