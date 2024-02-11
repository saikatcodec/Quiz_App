import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  final void Function() switchScreen;

  const Home(this.switchScreen, {super.key});

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 200,
            height: 300,
          ),
          Text(
            'Learn Flutter the Fun Way!',
            style: GoogleFonts.ubuntu(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          FilledButton.icon(
            onPressed: switchScreen,
            style: FilledButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 121, 0, 214),
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(0)),
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
