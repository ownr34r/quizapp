import 'package:flutter/material.dart';
import 'package:quizapp/widgets/quest_panel.dart';

class QuestPage extends StatelessWidget {
  const QuestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: mainColor,
      body: PageView.builder(
        // physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => QuestPanel(),
      ),
    );
  }
}
