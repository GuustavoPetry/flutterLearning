import 'package:flutter/material.dart';

class ExercicioMaterial extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ExercicioMaterialState();
}

class _ExercicioMaterialState extends State<ExercicioMaterial> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Exercicio MaterialApp",
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
      home: HomePage(
        toggleTheme: () {
          setState(() {
            isDark = !isDark;
          });
        },
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final VoidCallback toggleTheme;
  const HomePage({super.key, required this.toggleTheme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).secondaryHeaderColor,
      appBar: AppBar(
        title: Text("Exercicio MaterialApp"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Theme.of(context).primaryColor),
              child: Text(
                "Menu",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),

            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {},
            ),

            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("Perfil"),
              onTap: () {},
            ),

            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Configurações"),
              onTap: () {},
            ),

            ListTile(
              leading: Icon(Icons.info_rounded),
              title: Text("Sobre"),
              onTap: () {},
            ),

            ListTile(
              leading: Icon(Icons.logout_rounded),
              title: Text("Sair"),
              onTap: () {},
            ),
          ],
        ),
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Center(
              child: Text(
                "Seja Bem-vindo Investidor",
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
          SwitchListTile(
            title: Text(
              Theme.of(context).brightness == Brightness.dark
                  ? "Modo Claro"
                  : "Modo Escuro",
            ),
            value: Theme.of(context).brightness == Brightness.dark,
            onChanged: (value) => toggleTheme(),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Theme.of(context).colorScheme.secondary,
        padding: EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Icon(Icons.favorite_rounded, size: 24),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Icon(Icons.diamond_rounded, size: 24),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Icon(Icons.catching_pokemon_rounded, size: 24),
            ),
          ],
        ),
      ),
    );
  }
}
