import 'package:aula7/widgets/textos.dart';
import 'package:aula7/widgets/widget_button.dart';
import 'package:flutter/material.dart';
import 'package:simple_barcode_scanner/simple_barcode_scanner.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  String  codigoLido="000";
  String _imagePath="";
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exemplo imagem e qrCode"),
      ),
      body: _leituras(),
    );
  }

  _leituras() {
    return Container(
      color: Colors.black12,
      child: Column(
        children: [
          Buttons("Abrir leitor de QRCODE", onPressed: leituraQR,),
          Buttons("Tirar foto", onPressed: _tirarFoto),
          Textos(codigoLido),
          _imagePath ==""? Textos("Sem imagem"):
              Image.file(
                File(_imagePath),
                fit: BoxFit.cover,
              scale: 50,)
        ],
      ),
    );
  }

  Future <void> leituraQR() async {
    var res  = await Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => const SimpleBarcodeScannerPage(),
    ));
    setState(() {
      if (res is String) {
        codigoLido = res;

      }
    });
  }
  Future <void> leituraImagem() async {
    final imagemCarregada = await ImagePicker.openCamera(
      pickType: PickType.image
    );
    if (imagemCarregada !=null){
      setState(() {
        _imagePath = (imagemCarregada[0].path);
      });
    }
    bool resultado = await ImagePicker.saveImageToAlbum(
      File(imagemCarregada![0].path), albumName: "testeFlutter");
  }
}
