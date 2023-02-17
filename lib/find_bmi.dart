import 'package:bmi_calci/input_page.dart';
import 'package:flutter/material.dart';
import './constants.dart';
import './reusableCard.dart';
import './input_page.dart';

class FindBmi extends StatelessWidget {
  FindBmi(
      {required this.bmi});

  // final int weight;
  // final int height;
  // final NameOfGender actualGender;
  // final int age;
  final double bmi;

  Widget build(BuildContext context) {
    // bmi= weight*10000/(height*height);
    return Expanded(
      flex: 3,
      child: Text(
        bmi.toStringAsPrecision(4),
        style:
        TextStyle(fontSize: 100, fontWeight: FontWeight.w900),
      ),
    );
  }
   double GetBmi(){
    return bmi;
  }
}