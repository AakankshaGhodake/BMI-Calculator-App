import 'package:flutter/material.dart';
import './constants.dart';
import './reusableCard.dart';

class LastMsg extends StatelessWidget {
  LastMsg({required this.bmi});

  final double bmi;
  late String msg;
  Widget build(BuildContext context) {
    if(bmi<18.5){
      msg='You need to gain more weight!';
    }
    else if(bmi>=18.5&&bmi<25){
      msg='You have normal body. Good Job!!';
    }
    else if(bmi>=25&&bmi<30){
      msg='You need to exercise daily to lose some weight.';
    }
    else{
      msg='You need to consult to a doctor. You must lose weight!!';
    }

    return Expanded(
      flex: 3,
      child: Column(
        children: [
          Text(
            'NORMAL BMI-RANGE: ',
            style:TextStyle(fontWeight: FontWeight.w500,color: Colors.green,fontSize: 20),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10,),
          Text(
            '18.5 - 25 kg/m2',
            style: kLabelTextStyle,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              msg,
              style: kLabelTextStyle,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
