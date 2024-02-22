import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/summary/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.data, {super.key});

  final Map<String, Object> data;

  @override
  Widget build(BuildContext context) {
    final bool isCorrectAnswer =
        data['choosen_answer'] == data['correct_answer'];

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIdentifier(
            isCorrectAnswer: isCorrectAnswer,
            index: data['question_index'] as int,
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data['question'] as String,
                  style: GoogleFonts.ubuntu(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  data['choosen_answer'] as String,
                  style: GoogleFonts.lato(
                    fontSize: 15,
                    color: const Color.fromARGB(255, 249, 133, 241),
                  ),
                ),
                Text(
                  data['correct_answer'] as String,
                  style: GoogleFonts.lato(
                    fontSize: 15,
                    color: const Color.fromARGB(255, 150, 198, 241),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
