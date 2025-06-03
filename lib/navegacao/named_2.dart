import 'package:flutter/material.dart';

/// Navegação entre telas com rotas nomeadas:
class Tela2 extends StatelessWidget {
  const Tela2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tela 02")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/tela3");
              }, 
              child: Text("Ir para tela 3")
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              }, 
              child: Text("Voltar para tela 1")
            )
          ],
        )
      ),
    );
  }
}
