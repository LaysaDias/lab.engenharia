import 'package:aula4/widgets/imagens.dart';
import 'package:flutter/material.dart';
class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exemplo layouts"),
      ),
      body: _exExpanded(),
      // _exVariasLinhaseColunas(),
      //_exColunas(),
      //_exLinhas(),
      //_exGridView(),
      //_exListView(),
    );
  }

  _exListView() {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Text("Derac"),
        SuaImagem(caminhoArquivo: "imagens/Derac.jpg"),
        Text("Elosport"),
        SuaImagem(caminhoArquivo: "imagens/Elosport.png"),
        Text("Guarani par"),
        SuaImagem(caminhoArquivo: "imagens/Guarani par.jpg"),
        Text("IBIS"),
        SuaImagem(caminhoArquivo: "imagens/IBIS.png"),
        Text("OnzedeAgosto tatui"),
        SuaImagem(caminhoArquivo: "imagens/OnzedeAgosto tatui.png"),
        Text("Santos"),
        SuaImagem(caminhoArquivo: "imagens/Santos.jpg"),
        Text("SaoBento"),
        SuaImagem(caminhoArquivo: "imagens/SaoBento.jpg"),
        Text("XVdePira"),
        SuaImagem(caminhoArquivo: "imagens/XVdePira.png"),
        Text("AAIItape"),
        SuaImagem(caminhoArquivo: "imagens/AAIItape.jpg"),
        Text("ADAAng"),
        SuaImagem(caminhoArquivo: "imagens/ADAAng.png"),
      ],
    );
  }

  _exGridView() {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
        (crossAxisCount: 4),
      children: [
        Text("Derac"),
        SuaImagem(caminhoArquivo: "imagens/Derac.jpg"),
        Text("Elosport"),
        SuaImagem(caminhoArquivo: "imagens/Elosport.png"),
        Text("Guarani par"),
        SuaImagem(caminhoArquivo: "imagens/Guarani par.jpg"),
        Text("IBIS"),
        SuaImagem(caminhoArquivo: "imagens/IBIS.png"),
        Text("OnzedeAgosto tatui"),
        SuaImagem(caminhoArquivo: "imagens/OnzedeAgosto tatui.png"),
        Text("Santos"),
        SuaImagem(caminhoArquivo: "imagens/Santos.jpg"),
        Text("SaoBento"),
        SuaImagem(caminhoArquivo: "imagens/SaoBento.jpg"),
        Text("XVdePira"),
        SuaImagem(caminhoArquivo: "imagens/XVdePira.png"),
        Text("AAIItape"),
        SuaImagem(caminhoArquivo: "imagens/AAIItape.jpg"),
        Text("ADAAng"),
        SuaImagem(caminhoArquivo: "imagens/ADAAng.png"),
      ],
    );
  }

  _exLinhas() {
    return Container(
      color: Colors.greenAccent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text("Linha 01"),
          Text("Linha 02"),
          Text("Linha 03")
        ],
      ),
    );
  }

  _exColunas() {
    return Container(
      color: Colors.amber,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,

        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text("Coluna 01"),
          Text("Coluna 02    "),
          Text("Coluna 03")
        ],
      ),
    );
  }

  _exVariasLinhaseColunas() {
    return Container(
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget> [
              Text("Linha 01"),
              Text("Linha 02")
            ],
          ),
          Row(
            children: [
              Text("Linha 03"),
              Text("Linha 04")
            ],
          ),
        ],
      ),
    );
  }

  _exExpanded() {
    return Container(
      color: Colors.amberAccent,
      height: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text("Linha 01"),
                  Text("Linha 02")
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Linha 03"),
                  Text("Linha 04")
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.black12,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text("Linha 05"),
                  Text("Linha 06")
                ],
              ),
            ),
          )


        ],
      ),

    );
  }
}
