import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {required this.text, required this.value, required this.action});

  final String text;
  final void Function(String value) action;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
      child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 30,
          child: ElevatedButton(
            onPressed: () => action(value),
            child: Text(text),
          )),
    );
  }
}
