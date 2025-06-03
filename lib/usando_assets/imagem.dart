import 'package:flutter/material.dart';

/// Formatos de imagens aceitos pelo Flutter:
///   PGN, JPEG/JPG, GIF, WEBP, BMP,
///   SVG, HEIF/HEIC, WBMP, ICO,
///
/// SVG, HEIF/HEIC => NÃO É NATIVO (PRECISA DE BIBLIOTECA)

class Imagem extends StatelessWidget {
  const Imagem({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Assets Images",
      home: Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Text(
            "Utilizando Imagens",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(child: Image.asset("assets/images/programmer.jpg")),
      ),
    );
  }
}
