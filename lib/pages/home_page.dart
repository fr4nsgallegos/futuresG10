import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String title = "Hola a todos";

  Future<String> getTitle() async {
    return Future.delayed(
      Duration(seconds: 4),
      () {
        return "Los inocentes";
      },
    );
  }

  Future fetchTitle() async {
    //codificar más funciones
    title = await getTitle();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // title = await getTitle(); esto no se puede hacer porque build no puede ser asíncrono
    // getTitle().then((valor) {
    //   title = valor;
    //   setState(() {});
    // });

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 25),
            ),
            ElevatedButton(
              onPressed: () {
                fetchTitle();
              },
              child: Text("Obtener título"),
            )
          ],
        ),
      ),
    );
  }
}
