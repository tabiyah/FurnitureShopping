import 'package:flutter/material.dart';
import 'package:furniture/screens/first_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Color(0xff606060),
            fontFamily: 'Gelasio',
            fontSize: 24.0,
            fontWeight: FontWeight.w600,
            height: 1.25,
            letterSpacing: 1.0,
          ),
          displayMedium: TextStyle(
            color: Color(0xff303030),
            fontFamily: 'Gelasio',
            fontSize: 30.0,
            fontWeight: FontWeight.w700,
            height: 1.26,
            letterSpacing: 1.0,
          ),
          displaySmall: TextStyle(
            fontFamily: 'Nunito Sans',
            fontSize: 18.0,
            fontWeight: FontWeight.normal,
            height: 1.94,
            letterSpacing: 0.0,
            wordSpacing: 0.4,
            color: Color(0xFF808080),
          ),
        ),
      ),
      home: const FirstScreen(),
    );
  }
}
