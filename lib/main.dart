import 'package:flutter/material.dart';

//import './question.dart';
//import './answer.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      'question': 'What\'s your favorite color?',
      'answer': ['black', 'whit', 'blue', 'red']
    },
    {
      'question': 'What\'s your favorite animal?',
      'answer': ['lion', 'rabbit', 'dog', 'cat']
    },
    {
      'question': 'What\'s your favorite car?',
      'answer': ['BMW', 'Volvo', 'Toyota', 'Ford']
    }
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }
void _funcState () {
   setState(() {
      _questionIndex = 0;
    });
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < questions.length
            ? Quiz(
                questions: questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              )
            : Result(_funcState)
      ),
    );
  }
}
