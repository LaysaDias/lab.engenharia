import 'package:aula6/novaTela.dart';
import 'package:aula6/tela3.dart';
import 'package:flutter/material.dart';
import 'package:aula6/widgets/textos.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exemplo abre outras telas"),
        backgroundColor: Colors.black12,
        actions: <Widget> [
          IconButton(  onPressed: () { _novaTela(context, NovaTela("Informação pega da home")) ; },
            icon: Icon(
              Icons.ac_unit_outlined
            ),
          ),
          IconButton(onPressed: () { _tela3(context, Tela3()) ; },
              icon: Icon(
                Icons.add
              ),
          ),
        ],
      ),
    );
  }

  void _novaTela(ctx, page) {
    Navigator.push(ctx, MaterialPageRoute(builder: (BuildContext context)
      {
        return page;
      }));
  }

  void _tela3(ctx, page) {
    Navigator.push(ctx, MaterialPageRoute(builder: (BuildContext context)
        {
          return page;
        }));
  }
}