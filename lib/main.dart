import 'dart:io';

import 'package:flutter/material.dart';
import 'package:meu_app/cupertino/my_cupertino.dart';
import 'package:meu_app/exercicios/exercicio_material.dart';

void main(List<String> args) {

  if(Platform.isAndroid) {
    runApp(ExercicioMaterial());
  } else {
    runApp(MyCupertino());
  }

}
