import 'dart:io';

import 'package:flutter/material.dart';
import 'package:quizapp/MyHttpOverrides.dart';
import 'package:quizapp/view/category_screen/CategoryScreen.dart';
import 'package:quizapp/view/home_screen/HomeScreen.dart';
import 'package:quizapp/view/result_screen/ResultScreen.dart';
import 'package:quizapp/view/splash_screen/SplashScreen.dart';

void main() {

  HttpOverrides.global = MyHttpOverrides();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz App',
      home: Splashscreen(),
    );
  }
}

