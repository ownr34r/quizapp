import 'package:flutter/material.dart';
import 'package:quizapp/pages/my_start_page.dart';
import 'package:quizapp/pages/quest_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const MyStartPage(),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyStartPage(),
        '/second': (context) => const QuestPage(),
      },
    );
  }
}
