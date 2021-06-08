import 'package:flutter/foundation.dart';
import 'chat.dart';

class Chats with ChangeNotifier {
  List<Chat> _messageItemlist = [
    Chat(
        id: 'm1',
        name: 'Michael Grant',
        data: 'Yesterday',
        message: 'Thanks',
        imageUrl: 'assets/images/1.jpg',
        typeMessage: '',
        lastMessage: true),
    Chat(
        id: 'm2',
        name: 'Alexander Murphy',
        data: 'Mon',
        message: 'Based on what you have told',
        imageUrl: 'assets/images/2.jpg',
        typeMessage: 'Help Reg',
        lastMessage: false),
    Chat(
        id: 'm3',
        name: 'Stephanie Jones',
        data: '14:48',
        message: 'What time do you think you will be ',
        imageUrl: 'assets/images/3.jpg',
        typeMessage: '',
        lastMessage: true),
    Chat(
        id: 'm4',
        name: 'Julie McAndrew',
        data: '14:48',
        message: 'Thanks Julie',
        imageUrl: 'assets/images/4.jpg',
        typeMessage: 'Engagegment Partner',
        lastMessage: true),
    Chat(
        id: 'm5',
        name: 'Dilan Edmonds',
        data: '24 ago',
        message: 'asd',
        imageUrl: 'assets/images/5.jpg',
        typeMessage: '',
        lastMessage: false),
  ];

  List<Chat> get messageItemlist {
    return [..._messageItemlist];
  }
}
