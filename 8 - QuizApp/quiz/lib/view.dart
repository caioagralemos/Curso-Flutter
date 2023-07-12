import 'package:flutter/material.dart';
import 'package:quiz/answer.dart';
import 'package:quiz/question.dart';
import 'package:quiz/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({key});

  @override
  State<StatefulWidget> createState() {
    return QuizState();
  }
}

class QuizState extends State<Quiz> {
  var currentQuestion = 0;
  var correctAnswers = 0;

  void answer(String value){
    var correctAnswer = questions.elementAt(currentQuestion)['correctAnswer'].toString();
    setState(() {
      if (correctAnswer == value) {
        correctAnswers++;
      }
      currentQuestion++;
    });
  }

  void resetQuiz() {
    setState(() {
      correctAnswers = 0;
      currentQuestion = 0;
    });
  }

  String getQuestionTitle() {
    return questions.elementAt(currentQuestion)['question'].toString();
  }

  String getQuestionOption(int index) {
    var question = questions.elementAt(currentQuestion);
    var answers = question['answers'] as List<Map<String, String>>;
    return answers.elementAt(index).values.first;
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: currentQuestion < questions.length ? [
          QuestionTitle(text: getQuestionTitle()),
          AnswerButton(text: getQuestionOption(0), action: answer, value: 'a'),
          AnswerButton(text: getQuestionOption(1), action: answer, value: 'b'),
          AnswerButton(text: getQuestionOption(2), action: answer, value: 'c'),
          AnswerButton(text: getQuestionOption(3), action: answer, value: 'd'),
          AnswerButton(text: getQuestionOption(4), action: answer, value: 'e'),
          ]
          : [
            Text('Você finalizou: $correctAnswers respostas corretas!'),
            ElevatedButton(child: const Text("Reiniciar"), onPressed: resetQuiz,)
          ],
          ),
        )
      )
    );
  }
}