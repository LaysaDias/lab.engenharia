import 'package:flutter/material.dart';
class Textos extends StatelessWidget {
  String seuTexto;
  Textos(this.seuTexto);

  @override
  Widget build(BuildContext context) {
    return Text(
      this.seuTexto,
      style: TextStyle(
        color: Colors.black87,
        backgroundColor: Colors.white,
        fontSize: 23
      ),
    );
  }
}
