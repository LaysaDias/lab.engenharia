import 'package:ex02/widgets/textos.dart';
import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exemplo 02"),
        backgroundColor: Colors.purple,
      ),
      body: _body(),
    );
  }
  _body() {
    return Container(
      color: Colors.orange,
      child: Column(
        children: [
          Textos("Texto 01"),
          Textos("Texto 02"),
        ],
      ),
    );
  }
}