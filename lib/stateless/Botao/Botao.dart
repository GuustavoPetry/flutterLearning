import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  const Botao({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 50,
      child: ElevatedButton(
        onPressed: (){},
        child: Center(
          child: Text(
            "Seu Botão",
            textDirection: TextDirection.ltr,
            style: TextStyle(color: Colors.amber, fontSize: 20),
          ),
          ),
        ),
    );
  }
}