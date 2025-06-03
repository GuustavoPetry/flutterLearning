import 'package:flutter/material.dart';
import 'package:meu_app/navegacao/navigator_2.dart';

/// Navegação entre telas com a classe Navigator:
class Tela1 extends StatelessWidget {
  const Tela1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tela 01", style: TextStyle(fontSize: 24))),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const Tela2()),
            );
          },
          child: Text("Ir para tela 2"),
        ),
      ),
    );
  }
}
