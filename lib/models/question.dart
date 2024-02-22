class QuizQuestion {
  final String text;
  final List<String> answers;

  const QuizQuestion(this.text, this.answers);

  List<String> get shuffleAnswers {
    final shuffleAnswers = List.of(answers);
    shuffleAnswers.shuffle();
    return shuffleAnswers;
  }
}
