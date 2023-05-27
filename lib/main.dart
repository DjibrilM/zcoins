import 'package:flutter/material.dart';
import './navigation/bottomTab.dart';
import 'package:flutter/services.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'z-coin',
      theme: ThemeData(
          canvasColor: const Color.fromARGB(255, 249, 247, 247),
          primaryColorDark: const Color.fromRGBO(33, 37, 41, 100),
          fontFamily: "Circular Std",
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              selectedLabelStyle: TextStyle(
                color: Theme.of(context).primaryColor,
              ),
              unselectedLabelStyle: const TextStyle(
                  color: Color.fromRGBO(
                33,
                37,
                41,
                100,
              )),
              unselectedIconTheme: const IconThemeData(
                color: Color.fromARGB(115, 4, 4, 4),
              ),
              selectedIconTheme:
                  const IconThemeData(color: Color.fromRGBO(0, 97, 227, 100)))),
      home: const AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark),
        child: BottomTab(),
      ),
    );
  }
}
