import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/customNumPad.dart';
import 'package:flutter/services.dart';
import '../enum/enum.dart';

class Buying extends StatefulWidget {
  final String currencyTitle;
  final String currency;
  const Buying(
      {super.key, required this.currency, required this.currencyTitle});

  @override
  State<Buying> createState() => _BuyinState();
}

class _BuyinState extends State<Buying> {
  String printedValue = "0";
  bool disableAdding = false;

  void showSnackbar(BuildContext context) {
    const snackBar = SnackBar(
      content: Text("You can't buy more than 100,000 \$"),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void checkLimit(BuildContext context, String value) {
    if (value.contains(".")) {
      double valueInDouble = double.parse(value);
      if (valueInDouble > 1000000) {
        disableAdding = true;
        showSnackbar(context);
      } else {
        disableAdding = false;
      }
    } else {
      int valueInInt = int.parse(value);
      if (valueInInt > 1000000) {
        disableAdding = true;
        showSnackbar(context);
      } else {
        disableAdding = false;
      }
    }
  }

  void updateValue(NumPadButtonsType type, String value, context) {
    if (type == NumPadButtonsType.value) {
      if (disableAdding) return;

      if (value == '.') {
        if (printedValue.isNotEmpty && !printedValue.contains('.')) {
          setState(() {
            printedValue += value;
          });
        } else if (printedValue.contains('.') && value == ".") {
          return;
        }
      } else {
        if (printedValue == '0') {
          setState(() {
            printedValue = value;
          });
        } else {
          setState(() {
            printedValue += value;
          });
        }
      }
    } else {
      var arrNumber = printedValue.split("");
      if (arrNumber.isNotEmpty) {
        setState(() {
          arrNumber.removeLast();
          if (arrNumber.join("").isEmpty) {
            setState(() {
              printedValue = "0";
            });
          } else {
            setState(() {
              printedValue = arrNumber.join("");
            });
          }
        });
      }

      checkLimit(context, printedValue);
    }
    checkLimit(context, printedValue);
  }

  String get getCurrencyMark {
    return widget.currency;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            shadowColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.transparent,
            systemOverlayStyle: const SystemUiOverlayStyle(
                statusBarColor: Colors.transparent,
                statusBarIconBrightness: Brightness.dark),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 5,
                ),
                Text(widget.currencyTitle,
                    style: const TextStyle(color: Colors.black, fontSize: 14)),
                Text(
                  '($getCurrencyMark)',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 12),
                )
              ],
            ),
            leading: InkWell(
                borderRadius: BorderRadius.circular(100),
                onTap: () {
                  Navigator.of(context).pop();
                },
                splashColor: Colors.black26,
                child: Ink(
                  child: const Center(
                    child: FaIcon(
                      FontAwesomeIcons.chevronLeft,
                      size: 20,
                      color: Color.fromARGB(255, 97, 97, 97),
                    ),
                  ),
                ))),
        body: Column(
          children: [
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "$getCurrencyMark Amount in dollar",
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: 50,
                      alignment: Alignment.center,
                      child: FittedBox(
                        child: Text(
                          softWrap: false,
                          printedValue,
                          style: const TextStyle(fontSize: 40),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    const Text(
                      "\$",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ],
            )),
            Center(
              child: !disableAdding
                  ? const Text("Min 10\$  -  Max 100,000 \$")
                  : Text(
                      "🙄You have reached the limit",
                      style:
                          TextStyle(color: Theme.of(context).colorScheme.error),
                    ),
            ),
            NumPad(
              submitButtonLabel: 'View Buy',
              onPress: updateValue,
              context: context,
            ),
          ],
        ));
  }
}
