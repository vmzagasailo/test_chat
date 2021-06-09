import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'chat.dart';

class Chats with ChangeNotifier {
  List<Chat> _messageItemlist = [
    Chat(
        id: 'm1',
        name: 'Michael Grant',
        date: 'Yesterday',
        message: 'Thanks',
        imageUrl: 'assets/images/1.jpg',
        typeMessage: '',
        lastMessage: true),
    Chat(
        id: 'm2',
        name: 'Alexander Murphy',
        date: 'Mon',
        message: 'Based on what you have told',
        imageUrl: 'assets/images/2.jpg',
        typeMessage: 'Help Reg',
        lastMessage: false),
    Chat(
        id: 'm7',
        name: 'Darren Swinney',
        date: '13:24',
        message: 'Perhaps if there was some',
        imageUrl: 'assets/images/7.jpg',
        typeMessage: 'Chalenge',
        lastMessage: false,
        isGroup: true),
    Chat(
        id: 'm3',
        name: 'Stephanie Jones',
        date: '14:48',
        message: 'What time do you think you will be ',
        imageUrl: 'assets/images/3.jpg',
        typeMessage: '',
        lastMessage: true),
    Chat(
        id: 'm4',
        name: 'Julie McAndrew',
        date: '14:48',
        message: 'Thanks Julie',
        imageUrl: 'assets/images/4.jpg',
        typeMessage: 'Engagegment Partner',
        lastMessage: true),
    Chat(
        id: 'm5',
        name: 'Dilan Edmonds',
        date: '24 ago',
        message: 'asd',
        imageUrl: 'assets/images/5.jpg',
        typeMessage: '',
        lastMessage: false),
  ];

  String _searchString = '';

  UnmodifiableListView<Chat> get messageItemlist => _searchString.isEmpty
      ? UnmodifiableListView(_messageItemlist)
      : UnmodifiableListView(_messageItemlist.where(
          (chat) => chat.name.toLowerCase().trimRight().contains(_searchString.toLowerCase()),
        ));

  void changeSearchString(String searchString) {
    _searchString = searchString;
    notifyListeners();
  }

  // List<Chat> get messageItemlist {
  //   return [..._messageItemlist];
  //}

  // UnmodifiableListView<Chat> get messageItemlist =>
  //     UnmodifiableListView(_messageItemlist);
}
