import 'package:flutter/material.dart';

class DesafiosContainerPage extends StatelessWidget {
  Widget fondoGradiente() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.purple,
            Colors.pink,
            const Color.fromARGB(255, 164, 10, 211),
          ],
          stops: [0.01, 0.6, 1.0],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
      ),
    );
  }

  Widget hContainer() {
    return Container(
      width: 280,
      height: 280,
      alignment: Alignment.center,
      // padding: EdgeInsets.all(40),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.orange,
          width: 10,
        ),
      ),
      child: Text(
        "H",
        style: TextStyle(fontSize: 160, color: Colors.orange),
      ),
    );
  }

  Widget iAmHeader() {
    return Container(
      height: 130,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(25),
          bottomLeft: Radius.circular(25),
        ),
        boxShadow: [
          BoxShadow(
              color: Colors.blue.shade200, offset: Offset(9, 9), blurRadius: 6),
        ],
      ),
      alignment: Alignment.center,
      child: Text(
        "I am Header",
        style: TextStyle(color: Colors.white, fontSize: 38),
      ),
    );
  }

  Widget barra() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Container(
        width: 300,
        height: 90,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(45),
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Container(
            height: 90,
            width: 210,
            decoration: BoxDecoration(
              color: Colors.blue.shade200,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(45),
                bottomLeft: Radius.circular(45),
              ),
            ),
            alignment: Alignment.center,
            child: Text(
              "Challenge",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  Widget gradiente1() {
    return Container(
      width: 250,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [Colors.red, Colors.orange], // Gradiente de rojo a naranja
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.25, 0.9],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            offset: Offset(5, 5),
            blurRadius: 10,
          ),
        ],
      ),
      padding: EdgeInsets.only(left: 20),
      alignment: Alignment.centerLeft,
      child: Text(
        'Challenge',
        style: TextStyle(
          color: Colors.white.withOpacity(0.8),
          fontSize: 34,
          fontWeight: FontWeight.w300, // Fuente más delgada (ligera)
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Containers desafios"),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff242A6B),
              // Colors.pink,
              Color(0xffB63561),
            ],
            stops: [0.30, 0.7],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              // hContainer(),
              iAmHeader(),
              barra(),
              gradiente1(),
            ],
          ),
        ),
      ),
    );
  }
}
