import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/chat.dart';

class ChatItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatData = Provider.of<Chat>(context, listen: false);
    return Container(
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(chatData.imageUrl),
          ),
          Column(
            children: [
              Text(chatData.name),
            ],
          ),
          Text(chatData.data),
        ],
      ),
    );
  }
}
