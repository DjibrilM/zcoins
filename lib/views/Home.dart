import 'package:flutter/material.dart';
import '../widgets/homeHeader.dart';
import '../widgets/homeCurrenciesList.dart';
import '../widgets/storiesSnapshotList.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child:  Column(
        children: [
          const HomeHeader(),
          HomeCurrenciesList(),
          StoriesSnapshotList()
        ],
      ),
    );
  }
}
