import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './providers/chats.dart';

import './screens/sign_in_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Chats(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            color:  Color.fromRGBO(12, 39, 57, 1)
          ),
          primarySwatch: Colors.purple,
        ),
        home: SignInScreen(),
      ),
    );
  }
}
