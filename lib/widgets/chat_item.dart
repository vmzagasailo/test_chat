import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/chat.dart';

class ChatItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatData = Provider.of<Chat>(context, listen: false);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(chatData.imageUrl),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            chatData.name,
                            textScaleFactor: 1.2,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              chatData.lastMessage == true
                                  ? Text('You: ')
                                  : Text(chatData.name.substring(
                                          0, chatData.name.indexOf(' ')) +
                                      ' :'),
                              Text(
                                chatData.message,
                                maxLines: 1,
                                softWrap: false,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
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
                  ],
                ),
              ),
              Text(
                chatData.data,
                textScaleFactor: 0.8,
                style: TextStyle(fontWeight: FontWeight.w200),
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
