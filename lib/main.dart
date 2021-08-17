import 'package:first_app/result.dart';
import 'package:flutter/material.dart';
import 'quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppSate();
  }
}

class _MyAppSate extends State<MyApp> {
  int _questionindex = 0;
  int _totalScore = 0;
  final _questions = const [
    {
      // creating  map
      'questionText': 'What\'s your favourite color?',
      'answerText': [
        {'Text': 'Red', 'Score': 7},
        {'Text': 'Black', 'Score': 10},
        {'Text': 'White', 'Score': 3},
        {'Text': 'Pink', 'Score': 4},
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answerText': [
        {'Text': 'Dog', 'Score': 5},
        {'Text': 'Cat', 'Score': 4},
        {'Text': 'Butterfly', 'Score': 10},
        {'Text': 'Rabbit', 'Score': 7},
      ],
    },
    {
      'questionText': 'What\'s your favourite character?',
      'answerText': [
        {'Text': 'SnowWhite', 'Score': 4},
        {'Text': 'Cinderella', 'Score': 5},
        {'Text': 'Rapunzel', 'Score': 10},
        {'Text': 'Elsa', 'Score': 7},
      ],
    },
  ];
  void _answerQuestion( int score) {

    _totalScore += score;

    setState(() {
      _questionindex = _questionindex +1;
    });
    print(_questionindex);
  }
  void _resetQuiz(){
    setState(() {
      _totalScore = 0;
      _questionindex = 0 ;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mini Personality Quiz!!'),
        ),
        body: _questionindex < _questions.length
            ? // if this true then next statment will run
            Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                question_index: _questionindex,
              )
            : // work as else ( ?: ternary operator )
            Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
