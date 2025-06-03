import 'package:flutter/material.dart';
import 'package:meu_app/navegacao/named_3.dart';
import 'package:meu_app/navegacao/named_1.dart';
import 'package:meu_app/navegacao/named_2.dart';

class Routes extends StatelessWidget {
  const Routes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/tela1",
      routes: {
        "/tela1" : (context) => const Tela1(),
        "/tela2" :  (context) => const Tela2(),
        "/tela3" : (context) => const Tela3(),
      },
    );
  }
}