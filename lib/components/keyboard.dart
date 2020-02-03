import 'package:flutter/material.dart';
import 'button.dart';
import 'button_row.dart';

class Keyboard extends StatelessWidget {
  final void Function(String) cb;

  Keyboard(this.cb);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: <Widget>[
          ButtonRow([
            Buttun.big(
              text: 'AC',
              cb: cb,
              color: Buttun.DARK,
            ),
            Buttun(
              text: '%',
              cb: cb,
              color: Buttun.DARK,
            ),
            Buttun.operation(
              text: '/',
              cb: cb,
            ),
          ]),
          SizedBox(
            height: 1.5,
          ),
          ButtonRow([
            Buttun(
              text: '7',
              cb: cb,
            ),
            Buttun(
              text: '8',
              cb: cb,
            ),
            Buttun(
              text: '9',
              cb: cb,
            ),
            Buttun.operation(
              text: 'x',
              cb: cb,
            ),
          ]),
          SizedBox(
            height: 1.5,
          ),
          ButtonRow([
            Buttun(
              text: '4',
              cb: cb,
            ),
            Buttun(
              text: '5',
              cb: cb,
            ),
            Buttun(
              text: '6',
              cb: cb,
            ),
            Buttun.operation(
              text: '-',
              cb: cb,
            )
          ]),
          SizedBox(
            height: 1.5,
          ),
          ButtonRow([
            Buttun(
              text: '3',
              cb: cb,
            ),
            Buttun(
              text: '2',
              cb: cb,
            ),
            Buttun(
              text: '1',
              cb: cb,
            ),
            Buttun.operation(
              text: '+',
              cb: cb,
            ),
          ]),
          SizedBox(
            height: 1.5,
          ),
          ButtonRow([
            Buttun.big(
              text: '0',
              cb: cb,
            ),
            Buttun(
              text: '.',
              cb: cb,
            ),
            Buttun.operation(
              text: '=',
              cb: cb,
            ),
          ]),
        ],
      ),
    );
  }
}
