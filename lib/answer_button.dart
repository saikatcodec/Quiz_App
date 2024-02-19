import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String name;
  final void Function() onTap;

  const AnswerButton({super.key, required this.name, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        backgroundColor: const Color.fromARGB(255, 7, 0, 214),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      ),
      child: Text(
        name,
        textAlign: TextAlign.center,
      ),
    );
  }
}
