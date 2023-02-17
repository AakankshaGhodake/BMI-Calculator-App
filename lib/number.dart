import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './reusableCard.dart';
import './constants.dart';

class Data extends StatelessWidget {
  Data({required this.count, required this.dataName,required this.onFirstPress, required this.onSecondPress});

  final int count;
  // final int age;
  final String dataName;
  final VoidCallback onFirstPress;
  final VoidCallback onSecondPress;

  Widget build(BuildContext context) {
    return ReusableCard(
        colour: kActiveCardColor,
        cardChild: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(dataName,style: kLabelTextStyle,),
            Text(count.toString(),style: kNoTextStyle,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  backgroundColor: kPinkColor,
                  // backgroundColor: Color(0xff4C4F5E),
                  onPressed: onFirstPress,
                  child: Icon(FontAwesomeIcons.minus,color: Colors.white,),
                ),
                SizedBox(width: 10,),
                FloatingActionButton(
                  backgroundColor: kPinkColor,
                  // backgroundColor: Color(0xff4C4F5E),
                  onPressed: onSecondPress,
                  child: Icon(FontAwesomeIcons.plus,color: Colors.white,),
                )
              ],
            )
          ],
        ));
  }
}
