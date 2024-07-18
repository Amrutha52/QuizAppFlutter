import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/utils/constants/colorConstants.dart';

class optionsCard extends StatelessWidget {
  const optionsCard({
    super.key,
    required this.option,
    this.onOpitonsTapped,
    this.borderColor,
  });

  final String option; // Each options for corresponding questions
  final Color? borderColor;
  final void Function()? onOpitonsTapped;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onOpitonsTapped,
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        width: double.infinity,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(color: colorConstants.greyShade1,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey.shade800,
              width: 2
            ),
        ),
        child: Row(
          children: [
            Text(option,
              style: TextStyle(
                  color: colorConstants.mainWhite,
                  fontSize: 20,
                  fontWeight: FontWeight.w200
              ),
            ),
            Spacer(),
            Icon(Icons.radio_button_off, color: colorConstants.mainWhite,),
          ],
        ),
      ),
    );
  }
}