import 'package:flutter/material.dart';

/// Widget CONTAINER:
///   é um bloco de contrução visual que permite controlar layout, espaçamento, cor, bordas, transformação
///   e muito mais.
///
/// Propriedades do CONTAINER:
///   width/height => largura e altura fixas
///   padding => espaço interno (preenchimento) dentro do container
///   margin => espaço externo (fora do container)
///   color => cor de fundo do container
///   alignment => alinha o elemento filho dentro do container
///   decoration => estilo visual completo (cores, bordas, sombreamento, etc)
///   child => o conteúdo do container (filho)
///   constrainst => limita dimensões (mínimo e máximo)
///   transform => aplica rotação, escala, transformação e etc

class WidgetContainer extends StatelessWidget {
  const WidgetContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.all(16),
      color: Colors.blueAccent,
      alignment: Alignment.center,
      child: Container(
        width: 80,
        height: 80,
        padding: EdgeInsets.all(15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.green,
          border: Border.all(
            color: Colors.yellow,
            width: 4,
          )
        ),
        child: Text(
          "BRASIL",
          style: TextStyle(
            color: Colors.black,
            fontSize: 12
          ),
        ),
      ),
    );
  }
}
