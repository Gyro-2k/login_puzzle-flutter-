import 'package:flutter/material.dart';
import 'login_screen.dart';

class LoginApp extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      title: 'Login using e-mail',
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}
