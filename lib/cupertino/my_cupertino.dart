import 'package:flutter/cupertino.dart';
import 'package:meu_app/cupertino/tela_cupertino.dart';

class MyCupertino extends StatelessWidget {
  const MyCupertino({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: "Cupertino App",
      home: TelaCupertino(),
    );
  }
}