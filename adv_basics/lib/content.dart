import 'package:flutter/material.dart';

class Content extends StatelessWidget {
  const Content({super.key});

  void pressStartQuiz() {
    print('pressed');
  }

  @override
  Widget build(BuildContext context) {
    return (Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 200,
        ),
        const SizedBox(
          height: 40,
        ),
        const Text('Learn Flutter the fun way!',
            style: TextStyle(color: Colors.white, fontSize: 24)),
        const SizedBox(
          height: 20,
        ),
        OutlinedButton(
          onPressed: pressStartQuiz,
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
          ),
          child: const Text(
            'Start Quiz',
          ),
        ),
      ],
    ));
  }
}
