import 'package:flutter/material.dart';
import 'package:quizly/business/questions.dart';
import 'package:quizly/data/routes/routes.dart';
import 'package:quizly/presentation/widgets/app_background.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int currentQuestionIndex = 0;

  void nextQuestion(String question, bool answer) {
    Questions().answers[question] = answer;
    if (currentQuestionIndex < Questions().questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
      });
    } else {
      // Navigate to result page or show a message
      Navigator.pushReplacementNamed(context, AppRoutes.RESULT);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundContainer(
          child: Column(
            children: [
              const SizedBox(height: 36),
              Text(
                'Quiz Started!',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple[800],
                    letterSpacing: 1.15),
              ),
              const SizedBox(height: 32),
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                    'Q${currentQuestionIndex+1}. ${Questions().questions[currentQuestionIndex].question}',
                    style: const TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w800,
                        color: Colors.deepPurple,
                        letterSpacing: 1.05)),
              ),
              const Expanded(child: SizedBox()),
              ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 8),
                    child: ElevatedButton(
                        onPressed: () {
                          nextQuestion(Questions().questions[currentQuestionIndex].question, Questions().questions[currentQuestionIndex].options[index].isCorrect);
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepPurple,
                            foregroundColor: Colors.white,
                            minimumSize: const Size(350, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))),
                        child: Text(Questions().questions[currentQuestionIndex].options[index].answer,
                            style: const TextStyle(
                                fontSize: 18))),
                  );
                },
                itemCount: Questions().questions[currentQuestionIndex].options.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
              ),
              const Expanded(child: SizedBox()),
            ],
          )),
    );
  }

}
