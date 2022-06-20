import 'package:flutter/material.dart';
import 'package:quizapp/constans/app_color.dart';

final questAndAnswerStyle = BoxDecoration(
  color: questTableColor,
  border: Border(
    top: BorderSide(
      width: 3.0,
      color: questTextColor,
    ),
    left: BorderSide(width: 3.0, color: questTextColor),
    right: BorderSide(width: 3.0, color: questTextColor),
    bottom: BorderSide(width: 3.0, color: questTextColor),
  ),
);
