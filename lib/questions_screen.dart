import 'package:flutter/material.dart';

import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var crntQuestionIndx = 0;

  void answerTap() {
    setState(() {
      crntQuestionIndx++;
    });
  }

  @override
  Widget build(context) {
    final question = questions[crntQuestionIndx];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              question.text,
              style: const TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ...question.getShuffleAnswers().map(
              (answer) {
                return AnswerButton(
                  name: answer,
                  onTap: answerTap,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
