// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:football_app/constants.dart';
import 'package:football_app/logic/models/mysql.dart';
import 'package:football_app/screens/main_screen.dart';
import 'package:football_app/screens/signin_screen.dart';
import 'package:football_app/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

var db = Mysql();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "TitilliumWeb",
        scaffoldBackgroundColor: kbackgroundColor,
        appBarTheme: const AppBarTheme(color: kbackgroundColor),
        colorScheme: ColorScheme.fromSeed(
          seedColor: kprimaryColor,
          background: kbackgroundColor,
        ),
      ),
      home: const WelcomeScreen(), //WelcomeScreen
    );
  }
}
