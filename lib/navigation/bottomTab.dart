import 'package:flutter/material.dart';
import '../views/Home.dart';
import '../views/portfolio.dart';
import '../views/gifts.dart';
import '../views/market.dart';
import '../views/profile.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomTab extends StatefulWidget {
  const BottomTab({super.key});
  @override
  State<BottomTab> createState() => _BottomTabState();
}

class _BottomTabState extends State<BottomTab> {
  int currentView = 0;

  List<Widget> pages = [
    const Home(),
    const Portfolio(),
    const Gifts(),
    const Market(),
    const Profile(),
  ];

  void navigate(int index) {
    setState(() {
      currentView = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: pages[currentView]),
      bottomNavigationBar: BottomAppBar(
        height: 70,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          onTap: (index) {
            navigate(index);
          },
          elevation: 0,
          iconSize: 20,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.house), label: "Home"),
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.chartPie), label: "Portflio"),
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.gift), label: "Gift"),
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.chartLine), label: "Market"),
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.user), label: "profile"),
          ],
          currentIndex: currentView,
        ),
      ),
    );
  }
}
