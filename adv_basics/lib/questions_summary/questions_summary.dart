import 'package:adv_basics/questions_summary/question_identifier.dart';
import 'package:adv_basics/questions_summary/summary_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  QuestionIdentifier(
                    isCorrectAnswer:
                        data['correct_answer'] == data['user_answer'],
                    questionIndex: data['question_index'] as int,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SummaryItem(
                    question: data['question'] as String,
                    userAnswer: data['user_answer'] as String,
                    correctAnswer: data['correct_answer'] as String,
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
