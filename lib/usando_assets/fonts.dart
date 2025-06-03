import 'package:flutter/material.dart';

class Fonts extends StatelessWidget {
  const Fonts({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Assets",
      home: Scaffold(
        appBar: AppBar(title: Text("Utilizando Fontes")),
        body: Center(
          child: Text(
            "Fonte Roboto MonoSpace",
            style: TextStyle(fontFamily: "RobotoMono", fontSize: 30),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
