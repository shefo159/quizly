import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quizly/data/routes/routes.dart';
import 'package:quizly/presentation/widgets/app_background.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, AppRoutes.START);
    });
    return Scaffold(
      body: BackgroundContainer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/icons/quizly.svg',
              width: 250,
              color: Colors.purple.shade900,
            ),
            const SizedBox(height: 28),
            Text(
              'Quizly',
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.purple.shade900,
                  letterSpacing: 2.0),
            )
          ],
        ),
      ),
    );
  }
}
