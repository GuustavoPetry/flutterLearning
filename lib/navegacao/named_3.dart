import 'package:flutter/material.dart';

/// Navegação entre telas com rotas nomeadas:
class Tela3 extends StatelessWidget {
  const Tela3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tela 03")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Voltar para tela 2"),
        ),
      ),
    );
  }
}
