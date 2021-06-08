import 'package:flutter/widgets.dart';

class Chat with ChangeNotifier {
  final String id;
  final String name;
  final String message;
  final String imageUrl;
  final String typeMessage;
  final String date;
  final bool lastMessage;
  final bool isGroup;

  Chat(
      {this.id,
      this.name,
      this.message,
      this.imageUrl,
      this.typeMessage,
      this.date,
      this.lastMessage,
      this.isGroup = false});
}
