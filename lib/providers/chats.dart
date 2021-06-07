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
        typeMessage: ''),
    Chat(
        id: 'm2',
        name: 'Alexander Murphy',
        data: 'Mon',
        message: 'asd',
        imageUrl: 'assets/images/2.jpg',
        typeMessage: ''),
    Chat(
        id: 'm3',
        name: 'Stephanie Jones',
        data: '14:48',
        message: 'asd',
        imageUrl: 'assets/images/3.jpg',
        typeMessage: ''),
    Chat(
        id: 'm4',
        name: 'Julie McAndrew',
        data: '14:48',
        message: 'asd',
        imageUrl: 'assets/images/4.jpg',
        typeMessage: ''),
    Chat(
        id: 'm5',
        name: 'Dilan Edmonds',
        data: '24 ago',
        message: 'asd',
        imageUrl: 'assets/images/5.jpg',
        typeMessage: ''),
  ];

  List<Chat> get messageItemlist {
    return [..._messageItemlist];
  }
}
