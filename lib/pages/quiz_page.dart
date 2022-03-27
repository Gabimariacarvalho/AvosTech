import 'package:avostech/utils/pallete_colors.dart';
import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Pallete.kPrimary,
      padding: const EdgeInsets.fromLTRB(8, 12, 8, 0),
      child: Card(
        elevation: 1,
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
                    padding: const EdgeInsets.all(6),
                    child: const Text('Pergunta', style: TextStyle(color: Colors.white, fontSize: 18),)
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child:
                          SizedBox(
                            child: ListView(
                              shrinkWrap: true,

                              children: const [
                                ListTile(title: Text('test 1'),),
                                ListTile(title: Text('test 2'),)
                              ],
                            ),
                          )
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],),
      ),
    );
  }
}
