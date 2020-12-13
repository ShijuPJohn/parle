import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:parle/screens/chat_screen.dart';

class WelcomeScreen extends StatelessWidget {
  static const id = 'welcome_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: MaterialButton(
        minWidth: 300,
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        onPressed: () {
          Firebase.initializeApp();
          Navigator.of(context).pushNamed(ChatScreen.id);
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        color: Colors.lightBlue,
        child: Text(
          'Start Chatting',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white),
        ),
      )),
    );
  }
}
