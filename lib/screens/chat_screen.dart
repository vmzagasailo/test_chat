import 'package:flutter/material.dart';

import '../widgets/chats_list.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(padding: EdgeInsets.all(5), child: CircleAvatar()),
        centerTitle: true,
        title: Text('Chat'),
        actions: [
          IconButton(icon: Icon(Icons.add_comment_rounded), onPressed: () {})
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon:
                    IconButton(icon: Icon(Icons.search), onPressed: () {}),
                labelText: 'Search...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          Expanded(child: ChatsList()),
        ],
      ),
    );
  }
}
