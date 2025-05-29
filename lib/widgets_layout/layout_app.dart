import 'package:flutter/material.dart';
import 'package:meu_app/widgets_layout/montando_tela.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Widgets de Layout",
      home: MontandoTela(),
    );
  }
}