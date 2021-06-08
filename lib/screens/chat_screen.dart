import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../widgets/chats_list.dart';

class ChatScreen extends StatefulWidget {
  static const routeName = '/chat-screen';
  final GoogleSignInAccount user;
  ChatScreen({@required this.user});
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  int _selectedIndex = 0;

  void _onItemTaped(int _index) {
    setState(() {
      _selectedIndex = _index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
            padding: EdgeInsets.all(5),
            child: CircleAvatar(
              backgroundImage: NetworkImage(widget.user.photoUrl),
            )),
        centerTitle: true,
        title: Text('Chat'),
        actions: [
          IconButton(icon: Icon(Icons.add_comment_rounded), onPressed: () {})
        ],
      ),
      body: _selectedIndex == 0
          ? Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: IconButton(
                          icon: Icon(Icons.search), onPressed: () {}),
                      labelText: 'Search...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                Expanded(child: ChatsList()),
              ],
            )
          : _selectedIndex == 1
              ? Container()
              : Container(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTaped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none_outlined),
              label: 'Notification'),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: 'More'),
        ],
      ),
    );
  }
}
