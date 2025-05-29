import 'package:flutter/cupertino.dart';

class TelaCupertino extends StatefulWidget {
  const TelaCupertino({super.key});

  @override
  State<TelaCupertino> createState() => _TelaCupertinoState();
}

class _TelaCupertinoState extends State<TelaCupertino> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Barra Superior"),
        trailing: CupertinoButton(
          padding: EdgeInsets.zero,
          child: Icon(CupertinoIcons.line_horizontal_3),
          onPressed: () {},
        ),
      ),
      child: Stack(
        children: [
          Container(
            color: CupertinoColors.systemOrange,
            padding: EdgeInsets.only(top: 90),
            child: Center(child: Text("Corpo do Cupertino Scaffold")),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.all(16),
              color: CupertinoColors.systemGrey5,
              alignment: Alignment.center,
              child: Text("Rodapé"),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsetsGeometry.all(16),
              child: CupertinoButton.filled(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Icon(CupertinoIcons.add),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
