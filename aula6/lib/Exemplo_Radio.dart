import 'package:aula6/widgets/textos.dart';
import 'package:flutter/material.dart';
class ExemploRadio extends StatefulWidget {

  @override
  _ExemploRadioState createState() => _ExemploRadioState();
}

class _ExemploRadioState extends State<ExemploRadio> {
  int _resposta01=-1;
  int total=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }

  _radioButton(){
    return Container(
      height: double.infinity,
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Textos("Santos"),
                    Radio(
                      value: 10,
                      groupValue: _resposta01,
                      onChanged: _radioValueChangeresposta01,
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
