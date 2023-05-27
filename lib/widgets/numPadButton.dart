import 'package:flutter/material.dart';
import '../enum/enum.dart';

class NumPadButton extends StatelessWidget {
  final String value;
  final void Function(NumPadButtonsType, String, BuildContext) onPress;
  final NumPadButtonsType type;
  final BuildContext context;
  const NumPadButton(
      {super.key,
      required this.value,
      required this.onPress,
      required this.type,
      required this.context});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: InkWell(
      onTap: () {
        onPress(type, value, context);
      },
      borderRadius: BorderRadius.circular(100),
      splashColor: const Color.fromARGB(31, 0, 0, 0),
      child: Ink(
        width: 80,
        height: 80,
        child: Center(
          child: Text(
            value.toString(),
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    ));
  }
}
