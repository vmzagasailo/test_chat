import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/chat.dart';

class ChatItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatData = Provider.of<Chat>(context, listen: false);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(chatData.imageUrl),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              chatData.name,
                              textScaleFactor: 1.2,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              chatData.data,
                              textScaleFactor: 0.8,
                              style: TextStyle(fontWeight: FontWeight.w200),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                                              child: Row(
                          children: [
                            chatData.lastMessage == true
                                ? Text('You: ')
                                : Text(chatData.name.substring(
                                        0, chatData.name.indexOf(' ')) +
                                    ' :'),
                            Expanded(
                              child: Text(
                                chatData.message + 'test message',
                                maxLines: 1,
                                softWrap: false,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                      if (chatData.typeMessage == '') Text(''),
                      if (chatData.typeMessage == 'Help Reg')
                        TypeMessage(
                          messageData: chatData.typeMessage,
                          color: Colors.yellow,
                        ),
                      if (chatData.typeMessage == 'Engagegment Partner')
                        TypeMessage(
                          messageData: chatData.typeMessage,
                          color: Colors.black,
                          fontsColor: Colors.white,
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Divider(),
        ],
      ),
    );
  }
}

class TypeMessage extends StatelessWidget {
  final Color color;
  final messageData;
  final fontsColor;
  TypeMessage({this.color, this.messageData, this.fontsColor});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.all(5),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(15)),
      child: Text(
        messageData,
        style: TextStyle(color: fontsColor),
      ),
    );
  }
}
