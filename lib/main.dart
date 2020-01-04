import 'package:flutter/material.dart';
import 'package:fomation_tc/screens/home.dart';
import 'package:fomation_tc/screens/login.dart';
import 'package:fomation_tc/screens/signup.dart';

void main() => runApp(TC());

class TC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/signup' :(context) => SignupPage(),
      },
    );
  }
}