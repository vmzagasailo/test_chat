import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test_chat/api/google_signin_api.dart';
import 'package:url_launcher/url_launcher.dart';

import './chat_screen.dart';
import 'chat_screen.dart';

class SignInScreen extends StatelessWidget {
  _launchUrl() async {
    const url = 'https://flutter.dev';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    void _showErrorDialog(String message) {
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: Text('Something wrong...'),
          content: Text(message),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(ctx).pop();
              },
              child: Text('Ok'),
            )
          ],
        ),
      );
    }

    Future signIn() async {
      try {
        final user = await GoogleSignInApi.login();
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => ChatScreen(user: user)));
      } catch (error) {
        if (error.toString().contains('network_error')) {
          String errorMessage = 'No internet connection';
          _showErrorDialog(errorMessage);
        }
        throw error;
      }
    }

    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.brown,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'Chat',
                textScaleFactor: 2,
              ),
              Column(
                children: [
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
                    label: const Text('Sign up with Google'),
                    onPressed: signIn,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Made by '),
                      GestureDetector(
                        onTap: _launchUrl,
                        child: const Text(
                          'Flutter',
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
