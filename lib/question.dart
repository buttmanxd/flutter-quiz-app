import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String? questionText;

  const Question(this.questionText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      color: Color.fromARGB(255, 15, 255, 7),
      child: Text(
        questionText!,
        style: const TextStyle(
          fontFamily: 'Teko',
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Color.fromARGB(255, 255, 0, 0),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
