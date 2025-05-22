import 'package:flutter/material.dart';
import 'package:meu_app/stateless/cardUser/UserCard.dart';

class User extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Cartão de usuário")),
        body: const Center(
          child: UserCard(
            nome: "Gustavo Petry",
            email: "ogustavopetry@gmail.com",
            avatarUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdwT12D_59OK-CMrBN5BrcrGjdzT4MSavJ6A&s",
          ),
        ),
      ),
    );
  }
}
