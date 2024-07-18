import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/utils/constants/ImageConstants.dart';
import 'package:quizapp/utils/constants/animationConstants.dart';
import 'package:quizapp/utils/constants/colorConstants.dart';
import 'package:quizapp/view/home_screen/HomeScreen.dart';
import 'package:lottie/lottie.dart';


class Splashscreen extends StatefulWidget
{
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen>
{
  @override
  void initState() {
    Future.delayed(Duration(seconds: 10))
        .then((value) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: colorConstants.mainBlack,
      body: Center(
        child: Lottie.asset(animationConstants.LOGO_ANIMATION),
      ),
    );
  }
}