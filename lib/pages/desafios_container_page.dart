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
          ],
        ),
      ),
    );
  }
}
