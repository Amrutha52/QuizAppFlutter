import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/dummy_db.dart';
import 'package:quizapp/utils/constants/colorConstants.dart';
import 'package:quizapp/view/home_screen/HomeScreen.dart';

class ResultScreen extends StatefulWidget
{
  ResultScreen({
    super.key,
    required this.rightAnswerCount,
    required this.wrongAnswerCount
  });

  final int rightAnswerCount;
  final int wrongAnswerCount;

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context)
  {
    double percentage = widget.rightAnswerCount * 100/ DummyDb.question.length;

    return Scaffold(
      backgroundColor: colorConstants.mainBlack,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Congrats!", style: TextStyle(color: colorConstants.mainWhite, fontWeight: FontWeight.bold, fontSize: 18),),
            Text("$percentage % Score", style: TextStyle(color: Colors.green.shade600, fontSize: 22, fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Text("Correct Answers: ${widget.rightAnswerCount}", style: TextStyle(color: colorConstants.mainWhite, fontWeight: FontWeight.normal, fontSize: 14),),
            SizedBox(height: 10,),
            Text("Wrong Answers: ${widget.wrongAnswerCount}", style: TextStyle(color: colorConstants.mainWhite, fontWeight: FontWeight.normal, fontSize: 14),),
            SizedBox(height: 10,),
            Text("Skipped Questions: ", style: TextStyle(color: colorConstants.mainWhite, fontWeight: FontWeight.normal, fontSize: 14),),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder:
                               (context) => HomeScreen()
                           ));
              },
              child: Text("Restart", style: TextStyle(color: Colors.white),),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                backgroundColor: Color(0xFFff6600),
                side: BorderSide(
                  width: 4,
                  color: Colors.white,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
