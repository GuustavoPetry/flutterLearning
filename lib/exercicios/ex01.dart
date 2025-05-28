import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Exercício MaterialApp",
      home: Exercicio_01(),
    );
  }
}

// ignore: camel_case_types
class Exercicio_01 extends StatefulWidget {
  const Exercicio_01({super.key});

  @override
  State<StatefulWidget> createState() => _Exercicio_01_State();
}

// ignore: camel_case_types
class _Exercicio_01_State extends State<Exercicio_01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 23, 41),
        leading: Icon(Icons.catching_pokemon_sharp, color: Colors.white),
        title: Text(
          "Exercicio MaterialApp",
          style: GoogleFonts.robotoMono(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),

      body: Center(
        child: ClipRRect(
          child: Image.network("""
            https://images.unsplash.com/photo-1535551951406-a19828b0a76b?q=80&w=2066&auto=
            format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
            """),
        ),
      ),

      drawer: Drawer(
        backgroundColor: Colors.blueGrey,
        child: ListView(
          children: [
            DrawerHeader(
              child: Text(
                "Menu",
                style: GoogleFonts.robotoMono(
                  backgroundColor: Colors.black38,
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),
              )
            ),
            ListTile(title: Text("Ativos")),
            ListTile(title: Text("Rentabilidade")),
            ListTile(title: Text("Proventos")),
          ],
        )
      ),
    );
  }
}
