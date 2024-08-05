import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/dummy_db.dart';
import 'package:quizapp/utils/constants/colorConstants.dart';
import 'package:quizapp/view/home_screen/widgets/optionsCard.dart';
import 'package:quizapp/view/result_screen/ResultScreen.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ScienceScreen extends StatefulWidget {
  const ScienceScreen({super.key});

  @override
  State<ScienceScreen> createState() => _ScienceScreenState();
}

class _ScienceScreenState extends State<ScienceScreen> {
  int rightAnswerCount = 0;
  int wrongAnswerCount = 0;
  int skippedQuestions = 0;
  int currentQstnIndex = 0;
  int? selectedIndex;
  double progress = 0.0;
  //final double _consumedData = {currentQstnIndex + 1}/ totalData;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          actions: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(height: 10,),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue, borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Text(
                      "${currentQstnIndex + 1}/${DummyDb.sciencequestions.length}",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                  SizedBox(width: 20)
                ],
              ),
            )
          ],
        ),
        backgroundColor: Colors.black,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  new LinearProgressIndicator(
                    value: progress,
                    valueColor: AlwaysStoppedAnimation(Colors.deepOrange),
                  ),
                  SizedBox(height: 10,),
                  //question section
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade800,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      DummyDb.sciencequestions[currentQstnIndex]["question"].toString(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  // options seciton
                  Column(
                    children: List.generate(
                      4,
                          (index) {
                        List ansOptions =
                        DummyDb.sciencequestions[currentQstnIndex]["options"] as List;
                        return optionsCard(
                          borderColor: getColor(index),
                          onOpitonsTapped: () {
                            if (selectedIndex == null)
                            {
                              selectedIndex = index; // click cheytha indexum answer indexum equal aanenkil
                              updateProgress(progress + 0.1);
                              setState(() {});
                              if (selectedIndex ==
                                  DummyDb.sciencequestions[currentQstnIndex]
                                  ["answerIndex"])
                              {
                                rightAnswerCount ++;
                                print("rightAnswerCount" + rightAnswerCount.toString());
                              }
                              else
                              {
                                wrongAnswerCount++;
                                print("wrong answer");
                              }
                            }
                          },
                          option: ansOptions[index],
                        );
                      },
                    ),
                  ),

                  InkWell(
                    onTap: () {
                      if (selectedIndex != null)
                      {
                        if (currentQstnIndex < DummyDb.sciencequestions.length - 1)
                        {
                          currentQstnIndex++;
                          print(currentQstnIndex);

                          setState(() {

                          });
                          selectedIndex = null;
                        }
                        else
                        {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>
                              ResultScreen(rightAnswerCount: rightAnswerCount,
                                  wrongAnswerCount: wrongAnswerCount
                              ))

                          );
                        }
                      }
                      else
                      {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Select a valid choice")));
                      }
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.blue.shade800,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text(
                        "Next",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Color getColor(int index) {
    if (selectedIndex != null) {
      if (DummyDb.sciencequestions[currentQstnIndex]["answerIndex"] == selectedIndex &&
          index == selectedIndex) {
        return Colors.green;
      } else if (DummyDb.sciencequestions[currentQstnIndex]["answerIndex"] !=
          selectedIndex &&
          index == selectedIndex) {
        return Colors.red;
      } else if (DummyDb.sciencequestions[currentQstnIndex]["answerIndex"] == index) {
        return Colors.green;
      }
    }

    return Colors.grey.shade800;
  }

  void updateProgress(double value)
  {
    print("progressvalue" + value.toString());
    setState(() {
      progress = value;
    });
  }

}

