import 'package:flutter/material.dart';
import 'View/input_page.dart';
void main() => runApp(BMICalculator());
class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF080A1C),
        scaffoldBackgroundColor: Color(0xFF080A1C),
        textTheme: TextTheme(bodyText2: TextStyle(
          color: Colors.white,
        ),
        ),
      ),
      home: InputPage(),
    );
  }
}