import 'package:flutter/material.dart';

/// Navegação entre telas com rotas nomeadas:
class Tela1 extends StatelessWidget {
  const Tela1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tela 01", style: TextStyle(fontSize: 24))),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, "/tela2");
          },
          child: Text("Ir para tela 2"),
        ),
      ),
    );
  }
}
