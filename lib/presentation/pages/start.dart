import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quizly/business/questions.dart';
import 'package:quizly/data/routes/routes.dart';
import 'package:quizly/presentation/widgets/app_background.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundContainer(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/icons/idea.svg',
            width: 250,
            color: Colors.amber.withOpacity(0.75),
          ),
          const SizedBox(height: 28),
          Text(
            'Ready to test your\nknowledge?',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,

                color: Colors.amber.withOpacity(0.75),
                letterSpacing: 1.15),
          ),
          const SizedBox(height: 32),
          TextButton(
              onPressed: (){
                Questions().shuffle();
                Navigator.pushReplacementNamed(context, AppRoutes.QUIZ);
              },
              style: TextButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
              child: const Text('Start Quiz'))
        ],
      )),
    );
  }
}
