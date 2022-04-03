import 'package:avostech/utils/pallete_colors.dart';
import 'package:flutter/material.dart';

class Question {
  String ask;
  List<String> answers;
  String correctAnswer;

  Question(
      {required this.ask, required this.correctAnswer, required this.answers});
}

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  var questions = [
    Question(
        ask: 'Quantos paus se faz canoa?',
        correctAnswer: 'doce de banana',
        answers: [
          'doce de banana',
          'abóbora recheada',
          'chocolate com pimenta',
          'charmander'
        ]),
    Question(
        ask: 'Joaquim de beterraba faz verão?',
        correctAnswer: 'felipe dilon',
        answers: [
          'arnaldo sacomanni',
          'ivete sangalo',
          'mc kevinho',
          'felipe dilon'
        ])
  ];

  late Question selectedQuestion;
  int indexQuestion = 0;


  Future<String?> _changeQuestion(Question question, int answerIndex) {
    String title;
    String description;
    bool correct = question.correctAnswer == question.answers[answerIndex];
    if (correct) {
      title = 'Correto!';
      description = 'Parabéns, sua resposta está correta!';
    } else {
      title = 'Incorreto!';
      description = 'Não desanime!';
    }

    return showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text(title),
        content: Text(description),
        actionsAlignment: MainAxisAlignment.center,
        actions: <Widget>[
          TextButton(
            onPressed: () => {
              setState(() {
                if (indexQuestion < questions.length - 1) {
                  selectedQuestion = questions[++indexQuestion];
                }
              }),
              Navigator.pop(context, 'OK')
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    selectedQuestion = questions[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.kPrimary,
      body: Card(
        margin: const EdgeInsets.all(11),
        elevation: 8,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              elevation: 4,
              margin: const EdgeInsets.all(16),
              child: Container(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Pallete.kTertiary,
                        ),
                        padding: const EdgeInsets.all(12),
                        margin: const EdgeInsets.only(bottom: 16),
                        child: Text(
                          selectedQuestion.ask,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 18),
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: SizedBox(
                          child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: selectedQuestion.answers.length,
                              itemBuilder: (BuildContext context, int index) {
                                return InkWell(
                                  onTap: () => _changeQuestion(selectedQuestion, index),
                                  child: Container(
                                    padding: const EdgeInsets.all(8.0),
                                    margin: const EdgeInsets.all(6),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Pallete.kQuinary,
                                            width: 2),
                                        boxShadow: const [
                                          BoxShadow(color: Colors.white)
                                        ],
                                        borderRadius: BorderRadius.circular(6)),
                                    child:
                                        Text(selectedQuestion.answers[index]),
                                  ),
                                );
                              }),
                        ))
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
