import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/dummy_db.dart';
import 'package:quizapp/utils/constants/colorConstants.dart';
import 'package:quizapp/view/home_screen/widgets/optionsCard.dart';

class HomeScreen extends StatefulWidget
{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentQuestionIndex = 0;
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
      
                //Questions Section
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(color: colorConstants.greyShade1,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text(DummyDb.question[currentQuestionIndex]["question"].toString(),
                    style: TextStyle(color: colorConstants.mainWhite,
                    fontSize: 20,
                      fontWeight: FontWeight.w200
                    ),
                  ),
                ),
      
                SizedBox(height: 30,),
                // Options Section
                Column(
                  children:
                    List.generate(
                        4,
                        (index) {
                          List ansOptions = DummyDb.question[currentQuestionIndex]["options"] as List;
                          return optionsCard(
                            borderColor: getColor(index),
                            onOpitonsTapped: (){

                              setState(() {
                                selectedIndex = index;
                              });
                              if(index == DummyDb.question[currentQuestionIndex]["answerIndex"])
                                {
                                  print("rignt answer");
                                }
                              else
                              {
                                print("wrong answer");
                              }
                            },
                            option: ansOptions[index],
                          );
                        },

                    )
                  
                ),
                Spacer(),
                InkWell(
                  onTap: (){
                    if (currentQuestionIndex < DummyDb.question.length - 1)
                      {
                        currentQuestionIndex++;
                        print("currentQuestionIndex" + currentQuestionIndex.toString());
                        setState(() {

                        });
                      }
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Text("Next",
                      style: TextStyle(color: colorConstants.mainWhite,
                          fontSize: 20,
                          fontWeight: FontWeight.w200
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ),
    );
  }


  Color getColor(int index) {
    if (DummyDb.question[currentQuestionIndex]["answerIndex"] == selectedIndex &&
        index == selectedIndex) {
      return Colors.green;
    }
    return Colors.red.shade800;
  }

}


