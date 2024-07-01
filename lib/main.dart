import 'package:flutter/material.dart';
import 'package:login_signup/reportpage.dart';
import 'package:login_signup/signup.dart';
import 'package:login_signup/login.dart';
import 'package:login_signup/homepage.dart';
import 'package:login_signup/waitline.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'homepage': (context) => HomePage(),
      'login': (context) => LoginPageScreen(),
      'waitline':(context) => OrganWait(),
      'reportpage': (context) => ReportScreen()
    },
  ));
}
