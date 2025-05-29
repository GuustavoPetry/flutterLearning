import 'package:flutter/material.dart';
import 'package:meu_app/exercicios/exercicioMaterial.dart';
import 'package:meu_app/inherited/UserInfos.dart';
import 'package:meu_app/material_widget/my_material.dart';
import 'package:meu_app/stateful/DarkMode.dart';
import 'package:meu_app/stateful/RandomNumber.dart';
import 'package:meu_app/stateful/StoreStatus.dart';
import 'package:meu_app/stateless/Botao/Botao.dart';
import 'package:meu_app/stateful/Contador.dart';
import 'package:meu_app/stateless/cardUser/User.dart';
import 'package:meu_app/stateless/sem_estado/SemEstado.dart';

void main(List<String> args) {
  /*   runApp(Container(
    child: Text(
      "Bem-vindo ao Flutter",
      textDirection: TextDirection.ltr,
      style: TextStyle(color: Colors.lightGreen, fontSize: 30.0),
    ),
  )); */

  // runApp(SemEstado());

  /*   runApp(MaterialApp(
    home: Center(
      child: Botao(),
    ),
  )); */

  // runApp(User());

  // runApp(DarkMode());

  // runApp(RandomNumber());

  // runApp(StoreStatus());

  // runApp(UserInfos());

  /* 
  runApp(MaterialApp(
    home: Contador(),
  )); */

  // runApp(MyMaterial());

  runApp(ExercicioMaterial());
}
