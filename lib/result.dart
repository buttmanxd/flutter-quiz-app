import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;

  const Result(this.score, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Image.asset('assets/images/fullmark.png'),
        Text(
          "Your Score : $score / 10",
          style: const TextStyle(
            fontFamily: 'Indie Flower',
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ],
    ));
  }
}
