import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/dummy_db.dart';
import 'package:quizapp/view/home_screen/HomeScreen.dart';

class ResultScreen extends StatefulWidget
{
  ResultScreen({super.key, required this.rightAnswerCount });

  final int rightAnswerCount;

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context)
  {
    double percentage = widget.rightAnswerCount * 100/ DummyDb.question.length;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("$percentage %"),
            TextButton(onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder:
              (context) => HomeScreen()
              ));
            },
                child: Text("Restart"))
          ],
        ),
      ),
    );
  }
}
