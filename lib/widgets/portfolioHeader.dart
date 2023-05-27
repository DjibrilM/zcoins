import 'package:flutter/material.dart';

class PortfolioHeader extends StatelessWidget {
  const PortfolioHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(30),
        width: double.infinity,
        margin: const EdgeInsets.only(top: 50, left: 10, right: 10),
        decoration: BoxDecoration(
            color: const Color.fromRGBO(0, 99, 245, 1),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
                child: Text(
              "Portfolio",
              style: TextStyle(color: Colors.white, fontSize: 20),
            )),
            Container(
                margin: const EdgeInsets.only(top: 5),
                height: 20,
                child: const Text(
                  "Holding value",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w200),
                )),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Text(
                  '\$2,509.75',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                      color: Colors.white),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "+9.77%",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(right: 20),
                  alignment: Alignment.centerLeft,
                  height: 50,
                  decoration: const BoxDecoration(
                      border: Border(
                          right: BorderSide(
                              width: 1,
                              color: Color.fromARGB(94, 255, 255, 255)))),
                  child: const Column(
                    children: [
                      Text(
                        "Invested value",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(178, 255, 255, 255)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "\$1,618.75",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.centerLeft,
                  height: 50,
                  child: const Column(
                    children: [
                      Text(
                        "Available INR",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(178, 255, 255, 255)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "\$1589",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ));
  }
}
