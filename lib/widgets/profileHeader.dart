import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10, top: 50),
      child: Stack(
          alignment: Alignment.bottomRight,
          clipBehavior: Clip.antiAlias,
          children: [
            Positioned(
              right: -20,
              bottom: -40,
              child: Image.asset(
                "assets/images/homeHeader.png",
                width: 190,
              ),
            ),
            Positioned(
              left: -40,
              top: -25,
              child: Image.asset(
                "assets/images/homeHeader.png",
                width: 120,
              ),
            ),
            Container(
              clipBehavior: Clip.hardEdge,
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(237, 0, 91, 227),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    "assets/images/1589972211462.jpeg",
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Agilan Senthil",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 20),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "agilansenthilkumar@gmail.com",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "+91 9444977118",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                const SizedBox(
                  height: 20,
                )
              ]),
            ),
          ]),
    );
  }
}
