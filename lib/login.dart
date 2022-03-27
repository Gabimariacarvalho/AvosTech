import 'dart:ui';

import 'package:flutter/material.dart';

class LoginState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xffFE5471),
              Color(0xffFFA090),
            ],
          )),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const TextField(
                    autofocus: true,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: "E-mail",
                      labelStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Abeezee'),
                    )), //TextField
                const TextField(
                    autofocus: true,
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    style: TextStyle(color: Colors.blue, fontSize: 30),
                    decoration: InputDecoration(
                      labelText: "Senha",
                      labelStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Abeezee'),
                    )),
                ButtonTheme(
                  height: 56.0,
                  minWidth: 272,
                  child: RaisedButton(
                    onPressed: () => {
                      print("pressionei o botão"),
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: const Text(
                      "Enviar",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: 'Abeezee'),
                    ),
                    //Text
                    color: const Color(0xffFE5672),
                  ), //RaisedButton
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: 'Abeezee'),
                  ),
                  onPressed: () {},
                  child: const Text('Esqueci a senha'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
