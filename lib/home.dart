import 'package:aula03/widgets/widget_button.dart';
import 'package:aula03/widgets/widget_input.dart';
import 'package:flutter/material.dart';

import 'widgets/textos.dart';
class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String variavel='inicio';
  final _notaProvaController = TextEditingController();
  final _notaProjetoController = TextEditingController();
  final _notaAtividadesController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calcular a Média"),
        backgroundColor: Colors.grey,
      ),
      body: _body(),
    );
  }

  _body() {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Textos("Informe a nota da P1"),
          InputTextos("NOTA", "Insira aqui", controller: _notaProvaController,),

          Textos("Informe a nota do projeto"),
          InputTextos("PROJETO", "Insira aqui", controller: _notaProjetoController,),

          Textos("Informe a pontuação das atividades"),
          InputTextos("ATIVIDADES", "Insira aqui", controller: _notaAtividadesController,),

          Buttons("CALCULAR", onPressed: _seuMetododeClick,),
          Textos(variavel)
        ],
      ),
    );
  }

  void _seuMetododeClick(){
    double notaProva = double.tryParse(_notaProvaController.text) ?? 0.0;
    double notaProjeto = double.tryParse(_notaProjetoController.text) ?? 0.0;
    double notaAtividades = double.tryParse(_notaAtividadesController.text) ?? 0.0;

    double media = (notaProva * 0.3) + (notaProjeto * 0.5) + (notaAtividades * 0.2);
    String resultado = media >= 6.0 ? "Você foi aprovado" : "Você foi reprovado";
    setState(() {
      variavel = "Média: $media - $resultado";

    });



  }
}
