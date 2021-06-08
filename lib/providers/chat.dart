import 'package:flutter/widgets.dart';

class Chat with ChangeNotifier{
  final String id;
  final String name;
  final String message;
  final String imageUrl;
  final String typeMessage;
  final String data;
  final bool lastMessage;

  Chat(
      {this.id,
      this.name,
      this.message,
      this.imageUrl,
      this.typeMessage,
      this.data, this.lastMessage,});
}
