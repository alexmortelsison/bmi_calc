import 'package:bmi_calc/input_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BMI());
}

class BMI extends StatelessWidget {
  const BMI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(backgroundColor: Color(0xff0a0e21)),
        scaffoldBackgroundColor: const Color(0xff0a0e21),
      ),
      home: const InputPage(),
    );
  }
}
