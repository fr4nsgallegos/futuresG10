import 'package:flutter/material.dart';

class FuturebuilderPage extends StatelessWidget {
  Future<String> getData() async {
    // return Future.delayed(Duration(seconds: 4), () {
    //   return "Datos cargados correctamente";
    // });
    await Future.delayed(Duration(seconds: 4));
    return "Datos cargados correctamente";
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FutureBuilder(
                future: getData(),
                builder: (context, snapshot) {
                  print("-------------------------");
                  print("Snapshot: $snapshot");
                  print("Estado de conexión: ${snapshot.connectionState}");
                  print("ERROR: ${snapshot.error}");
                  print("Has data: ${snapshot.hasData}");
                  print("-------------------------");

                  return Text("Hola");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
