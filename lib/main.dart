import 'package:flutter/material.dart';
import 'Modules/bmi_app/bmiscreen/bmi_screen.dart';

void main() {
  runApp(My_app());
}

class My_app extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BmiScreen(),
    );
  }
}
