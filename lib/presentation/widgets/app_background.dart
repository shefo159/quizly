import 'package:flutter/material.dart';

class BackgroundContainer extends StatelessWidget {
  final Widget child;
  final bool useGradient;

  const BackgroundContainer({
    super.key,
    required this.child,
    this.useGradient = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: useGradient
            ? LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Theme.of(context).colorScheme.primaryContainer,
                  Theme.of(context).colorScheme.onPrimaryContainer,
                ],
              )
            : null,
        color: useGradient ? null : Colors.blue.shade800,
      ),
      width: double.infinity,
      height: double.infinity,
      child: child,
    );
  }
}