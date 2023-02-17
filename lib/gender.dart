import 'package:bmi_calci/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './reusableCard.dart';
import './constants.dart';

class Gender extends StatelessWidget{
  Gender({required this.genderSign,required this.genderName});

  final IconData genderSign;
  final String genderName;

  Widget build(BuildContext context){
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(genderSign,size: 80,),
        SizedBox(height: 20,),
        Text(genderName,style: kLabelTextStyle,)
      ],
    );
  }
}
