import 'package:flutter/material.dart';
import 'package:meu_app/material_practice/meu_app.dart';
import 'package:meu_app/material_practice/my_home.dart';

class MeuAppState extends State<MeuApp> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Praticando MaterialApp",
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
      home: MyHome(
        toggleTheme: () {
          setState(() {
            isDark = !isDark;
          });
        },
      ),
    );
  }
}
