import 'package:bmi_calci/constants.dart';
import 'package:bmi_calci/find_bmi.dart';
import 'package:bmi_calci/firstmsg.dart';
import 'package:bmi_calci/last_msg.dart';
import 'package:bmi_calci/reusableCard.dart';
import 'package:flutter/material.dart';
import './reusableCard.dart';
import './input_page.dart';
import './find_bmi.dart';

class EndPage extends StatelessWidget {
  EndPage({required this.weight, required this.height,required this.actualGender,required this.age});

  final int weight;
  final int height;
  final int age;
  final NameOfGender actualGender;

  Widget build(BuildContext context) {
    late double bmi= weight*10000/(height*height);

    return Scaffold(
        backgroundColor: Color(0xFF0A0E21),
        appBar: AppBar(
          backgroundColor: kPinkColor,
          title: Center(
            child: Text(
              'RESULT',
              style: kLabelTextStyle,
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 8,
              child: ReusableCard(
                  colour: kActiveCardColor,
                  cardChild: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FirstMsg(bmi: bmi),
                      FindBmi(bmi: bmi,),
                      LastMsg(bmi: bmi,),

                      SizedBox(
                        width: double.infinity,
                      )
                    ],
                  )),
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                 Navigator.pop(context);
                },
                child: Container(
                  color: kPinkColor,
                  child: Center(
                      child: Text(
                    'RECALCULATE',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
                  )),
                  width: double.infinity,
                  height: 70,
                  margin: EdgeInsets.only(top: 10),
                ),
              ),
            )
          ],
        ));
  }
}

// ReusableCard(
// colour: kActiveCardColor,
// cardChild: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.center,
// children: [
// Expanded(
// flex: 6,
// child: Center(
// child: Text(
// 'NORMAL',
// style: TextStyle(fontSize: 25,color: Colors.green,fontWeight: FontWeight.bold),
// ),
// )),
// Expanded(
// flex: 7,
// child: Text(
// weight.toString(),
// style: TextStyle(fontSize: 100,fontWeight: FontWeight.w900),
// )),
// Expanded(
// flex: 4,
// child: Text('You have normal body, Good JOB',style: kLabelTextStyle,
// textAlign: TextAlign.center,
// )
// ),
//
// SizedBox(
// width: double.infinity,
// )
// ],
// ),
// ),
