import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../enum/enum.dart';
import 'numPadButton.dart';

class NumPad extends StatefulWidget {
  final void Function(NumPadButtonsType, String, BuildContext) onPress;
  final String submitButtonLabel;
  final BuildContext context;
  const NumPad(
      {super.key,
      required this.onPress,
      required this.context,
      required this.submitButtonLabel});

  @override
  State<NumPad> createState() => _NumPadState();
}

class _NumPadState extends State<NumPad> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                NumPadButton(
                    value: "1",
                    onPress: widget.onPress,
                    type: NumPadButtonsType.value,
                    context: widget.context),
                NumPadButton(
                    value: "2",
                    onPress: widget.onPress,
                    type: NumPadButtonsType.value,
                    context: widget.context),
                NumPadButton(
                    value: "3",
                    onPress: widget.onPress,
                    type: NumPadButtonsType.value,
                    context: widget.context)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                NumPadButton(
                    value: "4",
                    onPress: widget.onPress,
                    type: NumPadButtonsType.value,
                    context: widget.context),
                NumPadButton(
                  value: "5",
                  onPress: widget.onPress,
                  type: NumPadButtonsType.value,
                  context: context,
                ),
                NumPadButton(
                    value: "6",
                    onPress: widget.onPress,
                    type: NumPadButtonsType.value,
                    context: widget.context)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                NumPadButton(
                    value: "7",
                    onPress: widget.onPress,
                    type: NumPadButtonsType.value,
                    context: widget.context),
                NumPadButton(
                    value: "8",
                    onPress: widget.onPress,
                    type: NumPadButtonsType.value,
                    context: widget.context),
                NumPadButton(
                    value: "9",
                    onPress: widget.onPress,
                    type: NumPadButtonsType.value,
                    context: widget.context)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                NumPadButton(
                    value: ".",
                    onPress: widget.onPress,
                    type: NumPadButtonsType.value,
                    context: widget.context),
                NumPadButton(
                  value: "0",
                  onPress: widget.onPress,
                  type: NumPadButtonsType.value,
                  context: widget.context,
                ),
                Material(
                    child: InkWell(
                        onTap: () {
                          widget.onPress(
                              NumPadButtonsType.delete, "-1", context);
                        },
                        borderRadius: BorderRadius.circular(100),
                        splashColor: const Color.fromARGB(39, 0, 0, 0),
                        child: Ink(
                          width: 80,
                          height: 80,
                          child: const Center(
                            child: FaIcon(FontAwesomeIcons.deleteLeft),
                          ),
                        )))
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: Colors.red),
              child: Material(
                borderRadius: BorderRadius.circular(5),
                child: InkWell(
                  onTap: () {
                    print(false);
                    widget.onPress(NumPadButtonsType.delete, "-1", context);
                  },
                  splashColor: Colors.white12,
                  child: Ink(
                    height: 60,
                    color: const Color.fromARGB(255, 0, 98, 245),
                    child:  Center(
                      child: Text(
                        widget.submitButtonLabel,
                        style: const TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
