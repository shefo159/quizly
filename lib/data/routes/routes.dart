import 'package:flutter/material.dart';
import 'package:quizly/presentation/pages/quiz.dart';
import 'package:quizly/presentation/pages/result.dart';
import 'package:quizly/presentation/pages/splash.dart';
import 'package:quizly/presentation/pages/start.dart';

class AppRoutes {
  static const String SPLASH = _RouteNames.SPLASH;
  static const String START = _RouteNames.START;
  static const String QUIZ = _RouteNames.QUIZ;
  static const String RESULT = _RouteNames.RESULT;

  static const String INITIAL = SPLASH;
  static Map<String, Widget Function(BuildContext)> ROUTES_MAP = {
    SPLASH: (context) => const SplashPage(), // Replace with actual SplashPage()
    START: (context) => const StartPage(), // Replace with actual StartPage()
    QUIZ: (context) => const QuizPage(), // Replace with actual QuizPage()
    RESULT: (context) => const ResultPage(), // Replace with actual ResultPage()
  };
}
class _RouteNames {
  static const String SPLASH = '/splash';
  static const String START = '/start';
  static const String QUIZ = '/quiz';
  static const String RESULT = '/result';
}