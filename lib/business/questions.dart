import 'package:quizly/data/models/answer.dart';

import '../data/models/question.dart';

class Questions {
  // Singleton pattern
  static final Questions _questions=Questions._internal();
  factory Questions() {
    return _questions;
  }
  Questions._internal();

  List<QuestionModel> questions = [
    QuestionModel(
      question: 'Which keyword is used to declare a constant value in Dart?',
      options: [
        AnswerModel(answer: 'constant'),
        AnswerModel(answer: 'static'),
        AnswerModel(answer: 'final'),
        AnswerModel(answer: 'const', isCorrect: true)
      ],
    ),
    QuestionModel(
      question: 'What is the primary purpose of the async keyword in Dart?',
      options: [
        AnswerModel(answer: 'A function is synchronous.'),
        AnswerModel(answer: 'A function returns an integer.'),
        AnswerModel(answer: 'A function is asynchronous.', isCorrect: true),
        AnswerModel(answer: 'A function returns a string.')
      ],
    ),
    QuestionModel(
      question: 'Which Dart collection is used to store key-value pairs?',
      options: [
        AnswerModel(answer: 'List'),
        AnswerModel(answer: 'Set'),
        AnswerModel(answer: 'Map', isCorrect: true),
        AnswerModel(answer: 'Queue')
      ],
    ),
    QuestionModel(
      question: 'Which of the following is NOT a built-in widget of Flutter?',
      options: [
        AnswerModel(answer: 'FloatingActionButton'),
        AnswerModel(answer: 'AppBar'),
        AnswerModel(answer: 'TextTransformer', isCorrect: true),
        AnswerModel(answer: 'TextStyle')
      ],
    ),
    QuestionModel(
      question: 'What is the primary method used to update the state of a StatefulWidget?',
      options: [
        AnswerModel(answer: 'updateState()'),
        AnswerModel(answer: 'refreshState()'),
        AnswerModel(answer: 'setState()', isCorrect: true),
        AnswerModel(answer: 'changeState()')
      ],
    ),
    QuestionModel(
      question: 'Which of the following is a core concept in Flutter, signifying that almost everything in the UI is a visual component?',
      options: [
        AnswerModel(answer: 'Controllers',),
        AnswerModel(answer: 'Widgets', isCorrect: true),
        AnswerModel(answer: 'Services',),
        AnswerModel(answer: 'Models',)
      ],
    ),
    QuestionModel(
      question: 'How many types of widgets are there in Flutter?',
      options: [
        AnswerModel(answer: '2', isCorrect: true),
        AnswerModel(answer: '4'),
        AnswerModel(answer: '6'),
        AnswerModel(answer: '+8')
      ],
    ),
    QuestionModel(
      question: 'A sequence of asynchronous Flutter events is known as a:',
      options: [
        AnswerModel(answer: 'Flow'),
        AnswerModel(answer: 'Current'),
        AnswerModel(answer: 'Stream', isCorrect: true),
        AnswerModel(answer: 'Series')
      ],
    ),
    QuestionModel(
      question: 'What element is used as an identifier for components when programming in Flutter?',
      options: [
        AnswerModel(answer: 'Widgets'),
        AnswerModel(answer: 'Keys', isCorrect: true),
        AnswerModel(answer: 'Elements'),
        AnswerModel(answer: 'Serial')
      ],
    ),
    QuestionModel(
      question: 'True or false: Flutter boasts improved runtime performance over most application frameworks.',
      options: [
        AnswerModel(answer: 'True', isCorrect: true),
        AnswerModel(answer: 'false'),
      ],
    ),
  ];

  void shuffle() {
    for (var question in questions) {
      question.randomize();
    }
    questions.shuffle();
    answers.clear();
  }
  Map<String,bool> answers={};

}