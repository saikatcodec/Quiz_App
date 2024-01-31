import 'package:flutter/material.dart';

import 'package:quiz_app/home.dart';

void main() {
  runApp(MaterialApp(
    title: 'Quiz App',
    home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 107, 54, 198),
              Color.fromARGB(255, 164, 32, 241),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: const Center(
          child: Home(),
        ),
      ),
    ),
  ));
}
