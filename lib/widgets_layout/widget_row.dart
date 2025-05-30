import 'package:flutter/material.dart';

/// ROW é um widget que organiza os filhos horizontalmente, um ao lado do outro,
/// dentro de um único eixo horizontal X da esquerda par a direita
///
/// Propriedades:
///   children => lista de widgets filhos alinhados horizontalmente
///   mainAxisAlignment => alinha os filhos no eixo principal (horizontal)
///   crossAxisAlignment => alinha os filhos no eixo cruzado (vertical)
///   mainAxisSize => define se o row ocupa todo o espaço horizontal ou
///                   somente o necessário
///   textDirection => define a direção do conteúdo: LTR (esquerda p/ direita) ou
///                    RTL (direita p/ esquerda)

class WidgetRow extends StatelessWidget {
  const WidgetRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: Colors.grey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Texto 1"),
          Text("Texto 2"),
          Text("Texto 3"),
          Text("Texto 4"),
        ],
      ),
    );
  }
}
