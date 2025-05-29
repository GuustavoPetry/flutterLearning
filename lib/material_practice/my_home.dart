import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  final VoidCallback toggleTheme;
  const MyHome({super.key, required this.toggleTheme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MarkeTool Finance",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: "Georgia",
            color:
                Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : const Color.fromARGB(255, 1, 16, 41),
          ),
        ),
      ),

      drawer: Drawer(
        backgroundColor: Theme.of(context).primaryColor,
        child: ListView(
          children: [
            DrawerHeader(
              child: Text(
                "HEADER",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Georgia",
                  color:
                      Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : const Color.fromARGB(255, 1, 16, 41),
                ),
              ),
            ),

            ListTile(
              iconColor:
                  Theme.of(context).brightness == Brightness.dark
                      ? Colors.white
                      : const Color.fromARGB(255, 1, 16, 41),
              leading: Icon(Icons.account_box_rounded),
              title: Text(
                "Minha Conta",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Georgia",
                  color:
                      Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : const Color.fromARGB(255, 1, 16, 41),
                ),
              ),
              onTap: () {},
            ),

            ListTile(
              iconColor:
                  Theme.of(context).brightness == Brightness.dark
                      ? Colors.white
                      : const Color.fromARGB(255, 1, 16, 41),
              leading: Icon(Icons.request_quote_outlined),
              title: Text(
                "Resultados",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Georgia",
                  color:
                      Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : const Color.fromARGB(255, 1, 16, 41),
                ),
              ),
              onTap: () {},
            ),

            SwitchListTile(
              title: Text(
                Theme.of(context).brightness == Brightness.dark
                    ? "Tema Claro"
                    : "Tema Escuro",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontFamily: "Georgia",
                ),
              ),
              value: Theme.of(context).brightness == Brightness.dark,
              onChanged: (value) => toggleTheme(),
            ),
          ],
        ),
      ),
    );
  }
}
