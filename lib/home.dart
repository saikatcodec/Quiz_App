import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final void Function() switchScreen;

  const Home(this.switchScreen, {super.key});

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 200,
          height: 300,
        ),
        const Text(
          'Learn Flutter the Fun Way!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        FilledButton(
          onPressed: switchScreen,
          style: const ButtonStyle(
            backgroundColor:
                MaterialStatePropertyAll(Color.fromARGB(255, 121, 0, 214)),
          ),
          child: const Text('Start Quiz'),
        ),
      ],
    );
  }
}
