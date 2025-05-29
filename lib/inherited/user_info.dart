import 'package:flutter/material.dart';
import 'package:meu_app/inherited/user_data.dart';
import 'package:meu_app/stateless/cardUser/user_card.dart';

class UserInfos extends StatelessWidget {
  const UserInfos({super.key});

  @override
  Widget build(BuildContext context) {
    return UserData(
      username: "Gustavo",
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text("Perfil de usuário")),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                UserCard(
                  nome: "Gustavo Petry",
                  email: "ogustavopetry@gmail.com",
                  avatarUrl:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdwT12D_59OK-CMrBN5BrcrGjdzT4MSavJ6A&s",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class WelcomeMessage extends StatelessWidget {
  const WelcomeMessage({super.key});

  @override
  Widget build(BuildContext context) {
    final username = UserData.of(context).username;
    return Text("Bem vindo $username", style: TextStyle(fontSize: 24));
  }
}
