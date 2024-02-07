import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'The Question....',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          AnswerButton(name: 'Answer 1', onTap: () {}),
          AnswerButton(name: 'Answer 2', onTap: () {}),
          AnswerButton(name: 'Answer 3', onTap: () {}),
        ],
      ),
    );
  }
}
