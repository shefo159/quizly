import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quizly/business/questions.dart';
import 'package:quizly/data/routes/routes.dart';
import 'package:quizly/presentation/pages/quiz.dart';
import 'package:quizly/presentation/widgets/app_background.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    final result = Questions().answers;
    int correctAnswers = result.values.where((isCorrect) => isCorrect).length;
    return Scaffold(
        body: BackgroundContainer(
            child: Column(
      children: [
        const SizedBox(height: 36),
        Text(
          'Quiz Completed!',
          style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple[800],
              letterSpacing: 1.15),
        ),
        const SizedBox(height: 32),
        Align(
          alignment: AlignmentDirectional.topStart,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Text('Results: $correctAnswers/${result.length} correct',
                style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w800,
                    color: Colors.deepPurple,
                    letterSpacing: 1.05)),
          ),
        ),
        Expanded(
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: result.length,
              itemBuilder: (context, index) {
                return Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: result.values.elementAt(index)
                        ? Colors.green.withOpacity(0.5)
                        : Colors.red.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 4,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Icon(
                        result.values.elementAt(index)
                            ? Icons.check_circle
                            : Icons.cancel,
                        color: result.values.elementAt(index)
                            ? Colors.green
                            : Colors.red,
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          result.keys.elementAt(index),
                          style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.deepPurple),
                          softWrap: true,
                        ),
                      ),
                    ],
                  ),
                );
              }),
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: ElevatedButton(
              onPressed: () {
                Questions().shuffle();
                Navigator.pushReplacementNamed(context, AppRoutes.QUIZ);
              },
              style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  backgroundColor: Colors.deepPurple,
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
              child: const Text('Restart Quiz')),
        )
      ],
    )));
  }
}
