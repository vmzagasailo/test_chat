import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/chats.dart';

import './chat_item.dart';

class ChatsList extends StatefulWidget {
  @override
  _ChatsListState createState() => _ChatsListState();
}

class _ChatsListState extends State<ChatsList> {
  final _controller = TextEditingController();
  String _query = '';

  @override
  void initState() {
    _controller.addListener(() {
      setState(() {
        _query = _controller.text;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  @override
  Widget build(BuildContext context) {
    final chatData = Provider.of<Chats>(context, listen: false);
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(32),
          ),
          child: TextField(cursorColor: Colors.black,
            controller: _controller,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search,color: Colors.black,),
              hintText: 'search',
              border: InputBorder.none,
              
            ),
            onChanged: (value) {
              Provider.of<Chats>(context, listen: false)
                  .changeSearchString(_query);
            },
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: chatData.messageItemlist.length,
            itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
              value: chatData.messageItemlist[i],
              child: ChatItem(),
            ),
          ),
        ),
      ],
    );
  }
}
