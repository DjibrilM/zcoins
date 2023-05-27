import 'package:flutter/material.dart';
import '../widgets/profileHeader.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics:const  BouncingScrollPhysics(),
      child: Column(
        children: [
          const ProfileHeader(),
          Container(
            margin: const EdgeInsets.only(
              top: 40,
            ),
            width: double.infinity,
            height: 60,
            decoration: const BoxDecoration(
                color: Colors.white,
                border: Border.symmetric(
                    horizontal: BorderSide(
                        width: 0.4, color: Color.fromARGB(47, 158, 158, 158)))),
            child: const ListTile(
              title: Text("History"),
              leading: FaIcon(
                FontAwesomeIcons.clockRotateLeft,
                color: Color.fromARGB(237, 0, 91, 227),
              ),
              trailing: FaIcon(
                FontAwesomeIcons.chevronRight,
                color: Colors.grey,
                size: 20,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            width: double.infinity,
            height: 60,
            decoration: const BoxDecoration(
                color: Colors.white,
                border: Border.symmetric(
                    horizontal: BorderSide(
                        width: 0.4, color: Color.fromARGB(47, 158, 158, 158)))),
            child: const ListTile(
              title: Text("Bank"),
              leading: FaIcon(
                FontAwesomeIcons.bank,
                color: Color.fromARGB(237, 0, 91, 227),
              ),
              trailing: FaIcon(
                FontAwesomeIcons.chevronRight,
                color: Colors.grey,
                size: 20,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 60,
            decoration: const BoxDecoration(
                color: Colors.white,
                border: Border.symmetric(
                    horizontal: BorderSide(
                        width: 0.4, color: Color.fromARGB(47, 158, 158, 158)))),
            child: const ListTile(
              title: Text("Notification"),
              leading: FaIcon(
                FontAwesomeIcons.bell,
                color: Color.fromARGB(237, 0, 91, 227),
              ),
              trailing: FaIcon(
                FontAwesomeIcons.chevronRight,
                color: Colors.grey,
                size: 20,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 60,
            decoration: const BoxDecoration(
                color: Colors.white,
                border: Border.symmetric(
                    horizontal: BorderSide(
                        width: 0.4, color: Color.fromARGB(47, 158, 158, 158)))),
            child: const ListTile(
              title: Text("Notification"),
              leading: FaIcon(
                FontAwesomeIcons.shieldHalved,
                color: Color.fromARGB(237, 0, 91, 227),
              ),
              trailing: FaIcon(
                FontAwesomeIcons.chevronRight,
                color: Colors.grey,
                size: 20,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 60,
            decoration: const BoxDecoration(
                color: Colors.white,
                border: Border.symmetric(
                    horizontal: BorderSide(
                        width: 0.4, color: Color.fromARGB(47, 158, 158, 158)))),
            child: const ListTile(
              title: Text("Help"),
              leading: FaIcon(
                FontAwesomeIcons.circleInfo,
                color: Color.fromARGB(237, 0, 91, 227),
              ),
              trailing: FaIcon(
                FontAwesomeIcons.chevronRight,
                color: Colors.grey,
                size: 20,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            width: double.infinity,
            height: 60,
            decoration: const BoxDecoration(
                color: Colors.white,
                border: Border.symmetric(
                    horizontal: BorderSide(
                        width: 0.4, color: Color.fromARGB(47, 158, 158, 158)))),
            child: const ListTile(
              title: Text("Help"),
              leading: FaIcon(
                FontAwesomeIcons.circleInfo,
                color: Color.fromARGB(237, 0, 91, 227),
              ),
              trailing: FaIcon(
                FontAwesomeIcons.chevronRight,
                color: Colors.grey,
                size: 20,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
