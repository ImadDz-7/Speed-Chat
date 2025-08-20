import 'package:flutter/material.dart';
import 'package:speed_chat/constants.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: EdgeInsets.all(16), 
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8,),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(16),
            topLeft: Radius.circular(16),
            bottomLeft: Radius.circular(16),
          ),
          color: kPrimaryColor,
        ),
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
