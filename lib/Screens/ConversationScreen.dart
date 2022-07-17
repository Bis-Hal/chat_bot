import 'package:flutter/material.dart';

class ConversationScreen extends StatefulWidget {
  const ConversationScreen({Key? key}) : super(key: key);

  @override
  State<ConversationScreen> createState() => _ConversationScreenState();
}

class _ConversationScreenState extends State<ConversationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Conversation',
          style: TextStyle(
              color: Colors.black54,
              fontSize: 18.0
          ),
        ),
        elevation: 15.0,
      ),
      body: Column(
        children: [
          
        ],
      ),
    );
  }
}
