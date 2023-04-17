import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem({
    super.key,
    required this.question,
    required this.userAnswer,
    required this.correctAnswer,
  });

  final String question;
  final String userAnswer;
  final String correctAnswer;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            question,
            style: GoogleFonts.lato(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            userAnswer,
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 143, 93, 198),
            ),
          ),
          Text(
            correctAnswer,
            style: GoogleFonts.lato(
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
