import 'package:flutter/material.dart';

// void main () {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer chosen!');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\s your favourite color?',
      'What\s your favourite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text('The question!'),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: () => print('Answer 2 chosen!'),
              child: Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: () { // sem seta!
                // ...
                print('Answer 3 chosen!');
              },
              child: Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
