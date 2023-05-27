import 'package:flutter/material.dart';

class GiftCard extends StatelessWidget {
  final String title;
  final String description;
  final String vector;
  final Color background;
  final String buttonText;
  final void Function() onClick;

  const GiftCard(
      {super.key,
      required this.onClick,
      required this.title,
      required this.description,
      required this.background,
      required this.buttonText,
      required this.vector});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(30),
        width: double.infinity,
        margin: const EdgeInsets.only(left: 10, right: 10, top: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: background),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    title,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w200),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  width: double.infinity,
                  child: Text(
                    description,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    onPressed: () {
                      onClick();
                    },
                    child: Text(
                      buttonText,
                      style: TextStyle(color: background),
                    ))
              ],
            ),
            SizedBox(
                child: Image.asset(
              vector,
              width: 80,
            ))
          ],
        ));
  }
}
