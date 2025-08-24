import 'package:flutter/material.dart';
import 'package:quizly/data/routes/routes.dart';
import 'package:quizly/presentation/pages/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: AppRoutes.ROUTES_MAP,
      initialRoute: AppRoutes.INITIAL,
    );
  }
}

