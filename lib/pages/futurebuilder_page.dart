import 'package:flutter/material.dart';

class FuturebuilderPage extends StatelessWidget {
  Future<String> getData() async {
    // return Future.delayed(Duration(seconds: 4), () {
    //   return "Datos cargados correctamente";
    // });
    await Future.delayed(Duration(seconds: 4));
    return "Datos cargados correctamente";

    //descomenta esta linea para simular el error
    // throw Exception("Error al cargar los datos");
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
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  print("-------------------------");
                  print("Snapshot: $snapshot");
                  print("Estado de conexión: ${snapshot.connectionState}");
                  print("ERROR: ${snapshot.error}");
                  print("Has data: ${snapshot.hasData}");
                  print("Data: ${snapshot.data}");
                  print("-------------------------");
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return SizedBox(
                      height: 120,
                      width: 120,
                      child: CircularProgressIndicator(
                        color: Colors.pink,
                        strokeWidth: 20,
                      ),
                    );
                  } else if (snapshot.hasError) {
                    return Text(
                      "ERROR: ${snapshot.error}",
                      style: TextStyle(color: Colors.red),
                    );
                  } else if (snapshot.hasData) {
                    return Text(snapshot.data);
                  } else {
                    return Text("Sin datos");
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
