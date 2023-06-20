import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var totalScore = 0;
  static const List<Map<String, dynamic>> _questions = [
    {
      "question": "Who is batman?",
      "answers": [
        "Superhero",
        "Orphan",
        "Literally me",
        "Loner",
        "Bruce Wayne"
      ],
      "correctAns": "Literally me",
    },
    {
      "question":
          "Who says the phrase 'Praise The Sun!' in the critically acclaimed game Dark Souls 1 ?",
      "answers": [
        "Gwyndolin",
        "Solaire of Astora",
        "Orenstein",
        "Patches",
        "Andre the giant"
      ],
      "correctAns": "Solaire of Astora",
    },
    {
      "question": "Who is the author of Berserk, a Japanese manga series?",
      "answers": [
        "Kentaro Miura",
        "Junji Ito",
        "Takehiko Inoue",
        "Fyodor Dostoevsky",
        "Chetan Bhagat"
      ],
      "correctAns": "Kentaro Miura",
    },
    {
      "question":
          "Who said the recently trending dialouge on the internet - 'I have no enemies' ",
      "answers": [
        "Guts from Berserk",
        "Thorfinn from Vinland Saga",
        "Miyamoto Mushashi from Vagabond",
        "Johan Liebert from Monster"
      ],
      "correctAns": "Thorfinn from Vinland Saga",
    },
    {
      "question": "Which one of the following exercise is for back muscle ? ",
      "answers": [
        "Lat Pull Down",
        "Push Up",
        "Pec Fly",
        "Inclined Dumbell Press"
      ],
      "correctAns": "Lat Pull Down",
    },
  ];

  void _answerQuestion(int res) {
    setState(() {
      totalScore += res;
      _questionIndex = (_questionIndex + 1);
    });
  }

  void _resetQuiz() {
    setState(() {
      totalScore = 0;
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My app",
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "THE QUIZ APP",
            style: TextStyle(fontFamily: 'Kaushan Script'),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Text(
            "Reset Quiz",
            style: TextStyle(fontFamily: 'Press Start 2P'),
            textAlign: TextAlign.center,
          ),
          onPressed: () {
            _resetQuiz();
          },
        ),
        body: Container(
          margin: const EdgeInsets.all(10),
          child: _questionIndex >= _questions.length
              ? Result(totalScore)
              : Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
