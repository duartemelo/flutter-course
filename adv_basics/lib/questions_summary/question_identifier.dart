import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier({
    super.key,
    required this.isCorrectAnswer,
    required this.questionIndex,
  });

  final bool isCorrectAnswer;
  final int questionIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: isCorrectAnswer
            ? Colors.blue
            : const Color.fromARGB(255, 178, 72, 197),
      ),
      alignment: Alignment.center,
      child: Text(
        (questionIndex + 1).toString(),
        style: GoogleFonts.lato(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
