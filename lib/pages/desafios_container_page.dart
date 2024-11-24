import 'package:flutter/material.dart';

class DesafiosContainerPage extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Containers desafios"),
      ),
      body: Center(
        child: Column(
          children: [
            hContainer(),
            iAmHeader(),
            barra(),
          ],
        ),
      ),
    );
  }
}
