import 'package:flutter/material.dart';
import 'button.dart';

class ButtonRow extends StatelessWidget {
  final List<Buttun> buttons;

  ButtonRow(this.buttons);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // Para simplificar aqui eu coloquei o fold que funciona como reduce
          // ele pega o elemento e soma com o seguinte
          // por esse motivo estou forcando ele a validar se existe um botao inicialmente
          // outro ponto ele passa uma lista para ser contruida e nao um elemento de cada vez como na primeira versao.
          children: buttons.fold(<Widget>[], (list, b) {
            list.isEmpty ? list.add(b) : list.addAll([SizedBox(width: 1.5), b]);
            return list;
          }),
        ));
  }
}
