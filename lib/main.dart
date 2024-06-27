import 'package:flutter/material.dart';
import 'package:login_signup/homepage.dart';
import 'package:login_signup/login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context) => MyLogin(),
      'homepage': (context) => HomePage()
    },
  ));
}
