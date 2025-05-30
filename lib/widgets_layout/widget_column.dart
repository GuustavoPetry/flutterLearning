import 'package:flutter/material.dart';
import 'package:meu_app/widgets_layout/box.dart';

/// Widget COLUMN:
///   é um widget usado para dispor widgets filhos verticalmente, um
///   abaixo do outro, dentro de um único eixo (eixo vertical => Y)
///
/// Propriedades Principais:
///   children => uma lista de widgets empilhados verticalmente
///   mainAxisAlignment => alinha os filhos no eixo vertical (Y)
///   crossAxisAlignment => alinha os filhos no eixo cruzado (X)
///   mainAxisSize => controla se a column ocupa todo o espaço ou
///                   somente o necessário
///   textBiseLine => necessário para alinhamento de texto com o
///                   crossAxisAlignment
///

class WidgetColumn extends StatelessWidget {
  const WidgetColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.grey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Box(text: "Box 1", backgroundcolor: Colors.red),
          Box(text: "Box 2", backgroundcolor: Colors.blue),
        ],
      ),
    );
  }
}
