import 'package:flutter/material.dart';




class BNBChat extends StatefulWidget {
  const BNBChat({Key? key}) : super(key: key);

  @override
  State<BNBChat> createState() => _BNBChatState();
}

class _BNBChatState extends State<BNBChat> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Chat App'),
    );
  }
}
