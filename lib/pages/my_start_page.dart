import 'package:flutter/material.dart';
import 'package:quizapp/constans/app_color.dart';

class MyStartPage extends StatelessWidget {
  const MyStartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(gradient: mainColor1),
        child: Center(
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(startBtnColor),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/second');
            },
            child: Text(
              'START!',
              style: TextStyle(fontSize: 35),
            ),
          ),
        ),
      ),
    );
  }
}
