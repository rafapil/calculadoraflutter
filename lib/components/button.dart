import 'package:flutter/material.dart';

class Buttun extends StatelessWidget {
  // aqui estou declarando as cores que serao usadas para cada acao
  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  static const DEDAULT = Color.fromRGBO(112, 112, 112, 1);
  static const OPERATION = Color.fromRGBO(250, 158, 13, 1);

  // aqui estou passando os parametros necessarios para cada requisicao.
  final String text;
  final bool big;
  final Color color;
  final void Function(String) cb;

  // Aqui eu usei o construtor padrao e outro nomeado assim quando for passar um botao com duas
  // posicoes e apenas necessario passar Buttun.big
  Buttun({
    @required this.text,
    this.big = false,
    this.color = DEDAULT,
    @required this.cb,
  });

  Buttun.big({
    @required this.text,
    this.big = true,
    this.color = DEDAULT,
    @required this.cb,
  });

  // se aplica a mesma regra para operation so que neste apenas troca a cor.
  Buttun.operation({
    @required this.text,
    this.big = false,
    this.color = OPERATION,
    @required this.cb,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: big ? 2 : 1,
        child: RaisedButton(
          color: this.color,
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white, fontSize: 32, fontWeight: FontWeight.w200),
          ),
          onPressed: () => cb(text),
        ));
  }
}
