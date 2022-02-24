import 'package:flutter/material.dart';
import './login_screen.dart';

void main() {
  runApp(MyApp());
}

Map<int, Color> color = {
  50: const Color.fromRGBO(101, 62, 120, .1),
  100: const Color.fromRGBO(101, 62, 120, .2),
  200: const Color.fromRGBO(101, 62, 120, .3),
  300: const Color.fromRGBO(101, 62, 120, .4),
  400: const Color.fromRGBO(101, 62, 120, .5),
  500: const Color.fromRGBO(101, 62, 120, .6),
  600: const Color.fromRGBO(101, 62, 120, .7),
  700: const Color.fromRGBO(101, 62, 120, .8),
  800: const Color.fromRGBO(101, 62, 120, .9),
  900: const Color.fromRGBO(101, 62, 120, 1),
};

MaterialColor colorCustom = MaterialColor(0xFF653E78, color);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: colorCustom,

        // accentColor: Colors.amber,
      ),
      home: const LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
