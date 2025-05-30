import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final String text;
  final Color backgroundcolor;
  const Box({super.key, required this.text, required this.backgroundcolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 140,
      alignment: Alignment.center,
      color: backgroundcolor,
      child: Text(text),
    );
  }
}
