import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test_chat/api/google_signin_api.dart';

import './chat_screen.dart';
import 'chat_screen.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future signIn() async {
      final user = await GoogleSignInApi.login();
      if (user == null) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Sign in Failed')));
      } else {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => ChatScreen(user: user)));
            // Navigator.of(context).pushNamed(ChatScreen.routeName, arguments: user);
      }
    }

    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.brown,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Chat',
                textScaleFactor: 2,
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  minimumSize: Size(double.infinity, 50),
                ),
                icon: FaIcon(
                  FontAwesomeIcons.google,
                  color: Colors.red,
                ),
                label: Text('Sign up with Google'),
                onPressed: signIn,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
