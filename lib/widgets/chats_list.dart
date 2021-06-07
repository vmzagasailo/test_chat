import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/chats.dart';

import './chat_item.dart';

class ChatsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatData = Provider.of<Chats>(context, listen: false);
    return ListView.builder(
      itemCount: chatData.messageItemlist.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        value: chatData.messageItemlist[i],
        child: ChatItem(),
      ),
    );
  }
}
