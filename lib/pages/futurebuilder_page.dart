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

  Future<List<Map<String, dynamic>>> getItems() async {
    return Future.delayed(Duration(seconds: 5), () {
      return [
        {"id": 1, "name": "Zapatos"},
        {"id": 2, "name": "Vestidos"},
        {"id": 3, "name": "Zapatillas"},
        {"id": 4, "name": "Polos"},
        {"id": 5, "name": "Camisas"},
        {"id": 6, "name": "Correas"},
      ];
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //SEGUNDO EJEMPLO CON FUTUREBUILDER
              FutureBuilder(
                future: getItems(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    print(snapshot.data);
                    List<Map<String, dynamic>> data = snapshot.data;
                    return Expanded(
                      child: ListView.builder(
                        itemCount: data.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            title: Text(data[index]["name"]),
                            leading: Text(data[index]["id"].toString()),
                          );
                        },
                      ),
                    );
                  }
                  return CircularProgressIndicator();
                },
              ),

              //PRIMER EJEMPLO CON FUTUREBUILDER
              // FutureBuilder(
              //   future: getData(),
              //   builder: (BuildContext context, AsyncSnapshot snapshot) {
              //     print("-------------------------");
              //     print("Snapshot: $snapshot");
              //     print("Estado de conexión: ${snapshot.connectionState}");
              //     print("ERROR: ${snapshot.error}");
              //     print("Has data: ${snapshot.hasData}");
              //     print("Data: ${snapshot.data}");
              //     print("-------------------------");
              //     if (snapshot.connectionState == ConnectionState.waiting) {
              //       return SizedBox(
              //         height: 120,
              //         width: 120,
              //         child: CircularProgressIndicator(
              //           color: Colors.pink,
              //           strokeWidth: 20,
              //         ),
              //       );
              //     } else if (snapshot.hasError) {
              //       return Text(
              //         "ERROR: ${snapshot.error}",
              //         style: TextStyle(color: Colors.red),
              //       );
              //     } else if (snapshot.hasData) {
              //       return Text(snapshot.data);
              //     } else {
              //       return Text("Sin datos");
              //     }
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
