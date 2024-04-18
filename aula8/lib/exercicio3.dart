import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Exercicio3 extends StatefulWidget {
  @override
  _Exercicio3State createState() => _Exercicio3State();
}

class _Exercicio3State extends State<Exercicio3> {
  FlutterTts flutterTts = FlutterTts();
  TextEditingController textController = TextEditingController();

  Future<void> _speak() async {
    await flutterTts.speak(textController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercício 3'),
        backgroundColor: Colors.green, // Altere a cor da barra de navegação
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueAccent, Colors.blue], // Altere as cores do gradiente de fundo
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: textController,
              style: TextStyle(color: Colors.white), // Altere a cor do texto do campo de texto
              decoration: InputDecoration(
                labelText: 'Digite o texto',
                labelStyle: TextStyle(color: Colors.white), // Altere a cor do texto do rótulo
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white), // Altere a cor da borda quando o campo não estiver em foco
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white), // Altere a cor da borda quando o campo estiver em foco
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _speak,
              style: ElevatedButton.styleFrom(
                primary: Colors.white, // Altere a cor do botão
                onPrimary: Colors.blueAccent, // Altere a cor do texto do botão
              ),
              child: Text('Converter em voz'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    flutterTts.stop();
    textController.dispose();
    super.dispose();
  }
}
