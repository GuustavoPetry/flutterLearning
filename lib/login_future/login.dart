import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String _status = "Aguardando...";
  bool _carregando = false;

  @override
  // Sempre que trabalhar com tarefas assíncronas, use initState
  void initState() {
    super.initState();
  }

  // Simulação de Login
  Future<bool> autenticar(String usuario, String senha) async {
    await Future.delayed(Duration(seconds: 2));
    return usuario == "admin" && senha == "admin";
  }

  void _fazerLogin() async {
    setState(() {
      _carregando = true;
      _status = "Processando...";
    });

    bool sucesso = await autenticar("admin", "admin");

    setState(() {
      _carregando = false;
      _status = sucesso ? "Login bem sucedido" : "Falha no Login";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login com Future", style: TextStyle(fontSize: 24)),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_carregando) CircularProgressIndicator(),
            SizedBox(height: 20),
            Text(_status, style: TextStyle(fontSize: 18)),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: _carregando ? null : _fazerLogin,
              child: Text("Simular Login"),
            ),
          ],
        ),
      ),
    );
  }
}
