import 'package:flutter/material.dart';
import 'package:meu_app/widgets_layout/widget_column.dart';
import 'package:meu_app/widgets_layout/widget_container.dart';
import 'package:meu_app/widgets_layout/widget_row.dart';

class MontandoTela extends StatefulWidget {
  const MontandoTela({super.key});

  @override
  State<StatefulWidget> createState() => _MontandoTela();
}

class _MontandoTela extends State<MontandoTela> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Widgets de Layout")),

      body: WidgetRow(),
    );
  }
}
