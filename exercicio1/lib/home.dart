import 'package:exercicio1/widget_button.dart';
import 'package:exercicio1/widgets_input.dart';
import 'package:flutter/material.dart';

import 'textos.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Exercicio 1'),
        ),
        body: Tela01(),
      ),
    );
  }
}

class Tela01 extends StatefulWidget {
  @override
  _Tela01State createState() => _Tela01State();
}

class _Tela01State extends State<Tela01> {
  TextEditingController qtdController = TextEditingController();
  TextEditingController valorController = TextEditingController();
  TextEditingController descontoController = TextEditingController();

  double totalSemDesconto = 0.0;
  double totalComDesconto = 0.0;
  double valorAPagar = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Textos('Informe a quantidade de produtos:'),
              InputTextos(
                'Quantidade',
                'Informe a quantidade',
                controller: qtdController,
              ),
              SizedBox(height: 20),
              Textos('Informe o valor do produto:'),
              InputTextos(
                'Valor',
                'Informe o valor',
                controller: valorController,
              ),
              SizedBox(height: 20),
              Textos('Informe o percentual de desconto:'),
              InputTextos(
                'Desconto',
                'Informe o desconto',
                controller: descontoController,
              ),
              SizedBox(height: 20),
              Buttons(
                'Calcular',
                onPressed: () {
                  setState(() {
                    double quantidade = double.parse(qtdController.text);
                    double valor = double.parse(valorController.text);
                    double desconto =
                        double.parse(descontoController.text) / 100;

                    totalSemDesconto = quantidade * valor;
                    totalComDesconto = totalSemDesconto * desconto;
                    valorAPagar = totalSemDesconto - totalComDesconto;
                  });
                },
              ),
              SizedBox(height: 20),
              Textos('O total sem desconto é: $totalSemDesconto'),
              Textos('O total de desconto é: $totalComDesconto'),
              Textos('O valor a pagar é: $valorAPagar'),
            ],
          ),
        ),
      ),
    );
  }
}