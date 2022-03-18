import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:avostech/login.dart';

void main() {runApp( MyApp());


}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Avos Tech',
      theme: ThemeData(

          visualDensity: VisualDensity.adaptivePlatformDensity,

        primarySwatch: Colors.blue,
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                padding:
                const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                primary: Colors.pinkAccent, // background color
                textStyle: const TextStyle(
                    fontSize: 30, fontStyle: FontStyle.italic,color : Colors.white ))),),
      home:  LoginState(),
    );
  }

}
