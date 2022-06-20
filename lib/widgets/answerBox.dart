import 'package:flutter/material.dart';
import 'package:quizapp/constans/app_color.dart';
import 'package:quizapp/constans/box_settings.dart';

class AnswerBox extends StatelessWidget {
  const AnswerBox({Key? key, required this.abcdQuest, required this.answerText})
      : super(key: key);
  final String abcdQuest;
  final String answerText;
  @override
  Widget build(BuildContext context) {
    final sizeWitdh = MediaQuery.of(context).size.width;
    final sizeHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {
        print('object');
      },
      child: Container(
        padding: EdgeInsets.all(6),
        margin: EdgeInsets.only(left: 10, right: 4, bottom: 10, top: 4),
        height: sizeHeight / 5,
        width: sizeWitdh / 2.2,
        decoration: questAndAnswerStyle,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  abcdQuest,
                  style: TextStyle(color: questTextColor),
                )
              ],
            ),
            Text(
              answerText,
              style: TextStyle(color: questTextColor),
            ),
          ],
        ),
      ),
    );
  }
}
