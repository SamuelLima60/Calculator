import 'package:calculator/components/button_row_widget.dart';
import 'package:calculator/components/button_widget.dart';
import 'package:flutter/material.dart';

class KeyboardWidget extends StatelessWidget {
  final void Function(String) cb;

  const KeyboardWidget(this.cb, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Column(
        children: [
          ButtonRowWidget([
            ButtonWidget.big(text: 'AC', cb: cb, color: ButtonWidget.darkColor),
            ButtonWidget(text: '%', cb: cb, color: ButtonWidget.darkColor),
            ButtonWidget.operation(text: '/', cb: cb),
          ]),
          const SizedBox(height: 1),
          ButtonRowWidget([
            ButtonWidget(text: '7', cb: cb),
            ButtonWidget(text: '8', cb: cb),
            ButtonWidget(text: '9', cb: cb),
            ButtonWidget.operation(text: 'x', cb: cb),
          ]),
          const SizedBox(height: 1),
          ButtonRowWidget([
            ButtonWidget(text: '4', cb: cb),
            ButtonWidget(text: '5', cb: cb),
            ButtonWidget(text: '6', cb: cb),
            ButtonWidget.operation(text: '-', cb: cb),
          ]),
          const SizedBox(height: 1),
          ButtonRowWidget([
            ButtonWidget(text: '1', cb: cb),
            ButtonWidget(text: '2', cb: cb),
            ButtonWidget(text: '3', cb: cb),
            ButtonWidget.operation(text: '+', cb: cb),
          ]),
          const SizedBox(height: 1),
          ButtonRowWidget([
            ButtonWidget.big(text: '0', cb: cb),
            ButtonWidget(text: '.', cb: cb),
            ButtonWidget.operation(text: '=', cb: cb),
          ]),
        ],
      ),
    );
  }
}
