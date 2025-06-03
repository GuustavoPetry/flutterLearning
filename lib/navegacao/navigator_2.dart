import 'package:flutter/material.dart';
import 'package:meu_app/navegacao/navigator_1.dart';

/// Navegação entre telas com a classe Navigator:
class Tela2 extends StatelessWidget {
  const Tela2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tela 02")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Tela1()));
          },
          child: Text("Voltar para tela 1"),
        ),
      ),
    );
  }
}
