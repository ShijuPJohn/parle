import 'package:flutter/material.dart';
import 'package:parle/screens/chat_screen.dart';
import './screens/welcome_screen.dart';

void main() {
  runApp(ParleMain());
}

class ParleMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parle App',
      home: WelcomeScreen(),
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}
