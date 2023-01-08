import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  static const darkColor = Color.fromRGBO(82, 82, 82, 1);
  static const defaultColor = Color.fromRGBO(112, 112, 112, 1);
  static const operaionColor = Color.fromRGBO(250, 158, 13, 1);

  final String text;
  final bool big;
  final Color color;
  final void Function(String) cb;

  const ButtonWidget({
    required this.text,
    required this.cb,
    this.big = false,
    this.color = defaultColor,
    Key? key,
  }) : super(key: key);

  const ButtonWidget.big({
    required this.text,
    required this.cb,
    this.big = true,
    this.color = defaultColor,
    Key? key,
  }) : super(key: key);

  const ButtonWidget.operation({
    required this.text,
    required this.cb,
    this.big = false,
    this.color = operaionColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                  side: BorderSide(color: color))),
        ),
        onPressed: () => cb(text),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w200,
          ),
        ),
      ),
    );
  }
}
