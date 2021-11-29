import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_app_with_firebase/components/rounded_button.dart';

import '../constants.dart';
import 'chat_screen.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String lEmail;
  late String lPassword;
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: Container(
                height: 200.0,
                child: Image.asset('images/logo.png'),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              onChanged: (value) {
                lEmail = value;
              },
              decoration:
                  kTextFieldDecoration.copyWith(hintText: 'Enter Your Email.'),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                lPassword = value;
              },
              decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Enter Your Password.'),
            ),
            SizedBox(
              height: 24.0,
            ),
            RoundedButton(
              label: 'Log In',
              buttonColor: Colors.lightBlueAccent,
              onTap: () async {
                try {
                  final lUser = await _auth.signInWithEmailAndPassword(
                      email: lEmail, password: lPassword);

                  // ignore: unnecessary_null_comparison
                  if (lUser != null) {
                    Navigator.pushNamed(context, ChatScreen.id);
                  }
                } catch (e) {
                  print(e);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
