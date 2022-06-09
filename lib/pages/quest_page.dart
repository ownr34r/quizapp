import 'package:flutter/material.dart';
import 'package:quizapp/constans/app_color.dart';
import 'package:quizapp/constans/box_settings.dart';
import 'package:quizapp/widgets/answerBox.dart';

class QuestPage extends StatelessWidget {
  const QuestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizeWitdh = MediaQuery.of(context).size.width;
    final sizeHeight = MediaQuery.of(context).size.height / 1.9;
    return Scaffold(
      // backgroundColor: mainColor,
      body: Container(
        decoration: BoxDecoration(gradient: mainColor1),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              height: sizeHeight,
              width: sizeWitdh,
              decoration: questAndAnswerStyle,
              child: Center(
                child: Text(
                  'QuestText!!!',
                  style: TextStyle(color: questTextColor),
                ),
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    AnswerBox(abcdQuest: 'A'),
                    AnswerBox(abcdQuest: 'B'),
                  ],
                ),
                Row(
                  children: [
                    AnswerBox(abcdQuest: 'C'),
                    AnswerBox(abcdQuest: 'D'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
