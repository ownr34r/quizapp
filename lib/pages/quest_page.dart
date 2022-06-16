import 'package:flutter/material.dart';
import 'package:quizapp/constans/app_color.dart';
import 'package:quizapp/constans/box_settings.dart';
import 'package:quizapp/widgets/answerBox.dart';

class QuestPage extends StatelessWidget {
  const QuestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late String answerA = 'ответ A';
    late String answerB = 'ответ B';
    late String answerC = 'ответ C';
    late String answerD = 'ответ D';
    final sizeWitdh = MediaQuery.of(context).size.width;
    final sizeHeight = MediaQuery.of(context).size.height / 1.9;
    return Scaffold(
      // backgroundColor: mainColor,
      body: Container(
        decoration: BoxDecoration(gradient: mainColor1),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.all(10),
              height: sizeHeight,
              width: sizeWitdh,
              decoration: questAndAnswerStyle,
              child: Center(
                child: Text(
                  'Этот писатель XIX века, по общему мнению, является родоначальником целых трех жанров мировой литературы. Он создал научную фантастику, детектив и жанр ужасов. Кто он?!!!',
                  style: TextStyle(color: questTextColor),
                ),
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    AnswerBox(abcdQuest: 'A', answerText: answerA),
                    AnswerBox(abcdQuest: 'B', answerText: answerB),
                  ],
                ),
                Row(
                  children: [
                    AnswerBox(
                      abcdQuest: 'C',
                      answerText: answerC,
                    ),
                    AnswerBox(abcdQuest: 'D', answerText: answerD),
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
