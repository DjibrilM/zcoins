import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10, top: 50),
      child: Stack(
          fit: StackFit.loose,
          alignment: Alignment.bottomRight,
          clipBehavior: Clip.antiAlias,
          children: [
            Positioned(
              right: -10,
              bottom: -50,
              child: Image.asset(
                "assets/images/homeHeader.png",
                width: 190,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.25,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(237, 0, 91, 227),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "say something",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w200,
                          fontSize: 18),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Make you first Investment today",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Invest Today",
                            style: TextStyle(
                                color: Theme.of(context).primaryColor),
                          )),
                    )
                  ]),
            ),
          ]),
    );
  }
}
