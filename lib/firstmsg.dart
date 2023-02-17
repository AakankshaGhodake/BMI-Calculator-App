import 'package:flutter/material.dart';
import './constants.dart';
import './reusableCard.dart';

class FirstMsg extends StatelessWidget {
  FirstMsg({required this.bmi});

  final double bmi;
late String msg;
  Widget build(BuildContext context) {
    if(bmi<18.5){
      msg='UNDER WEIGHT';
    }
    else if(bmi>=18.5&&bmi<25){
      msg='HEALTHY';
    }
    else if(bmi>=25&&bmi<30){
      msg='OVER-WEIGHT';
    }
    else{
      msg='OBESITY';
    }

    return Expanded(
      flex: 3,
      child: Center(
        child: Text(
          msg,
          style: TextStyle(
              fontSize: 25, color: Colors.green, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
