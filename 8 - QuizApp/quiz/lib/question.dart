import 'package:flutter/material.dart';

class QuestionTitle extends StatelessWidget {
  const QuestionTitle({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row( 
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text(text)],
          );
  }
}