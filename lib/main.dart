import 'package:flutter/material.dart';
import 'package:flutter_chat_app_with_firebase/screens/login_screen.dart';
import 'package:flutter_chat_app_with_firebase/screens/chat_screen.dart';
import 'package:flutter_chat_app_with_firebase/screens/registration_screen.dart';
import 'package:flutter_chat_app_with_firebase/screens/welcome_screen.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/chatScreen': (context) => ChatScreen(),
        '/loginScreen': (context) => LoginScreen(),
        '/registrationScreen': (context) => RegistrationScreen(),
      },
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black54),
        ),
      ),

    );
  }
}
