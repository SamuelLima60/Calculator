import 'package:calculator/components/button_widget.dart';
import 'package:flutter/cupertino.dart';

class ButtonRowWidget extends StatelessWidget {
  final List<ButtonWidget> buttons;

  const ButtonRowWidget(this.buttons, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: buttons.fold(<Widget>[], (list, b) {
          list.isEmpty
              ? list.add(b)
              : list.addAll(
                  [const SizedBox(width: 1), b],
                );
          return list;
        }),
      ),
    );
  }
}
