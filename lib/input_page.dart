import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './reusableCard.dart';
import './gender.dart';
import './number.dart';
import './end_page.dart';
import './constants.dart';

enum NameOfGender { male, female }

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = kInactiveCardColor;
  Color femaleCardColor = kInactiveCardColor;
  int height = 170;
  int weight=50;
  int age=18;

  void updateColor(NameOfGender selectedGender) {
    if (selectedGender == NameOfGender.male) {
      if (maleCardColor == kInactiveCardColor) {
        maleCardColor = kActiveCardColor;
        femaleCardColor = kInactiveCardColor;
      }
    } else{
      femaleCardColor=kActiveCardColor;
      maleCardColor=kInactiveCardColor;
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.green,
      appBar: AppBar(
        title: Center(child: Text('BMI Calculator')),
        backgroundColor: Color(0xFF0A0E21),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        // mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColor(NameOfGender.male);
                        });
                      },
                      child: ReusableCard(
                          colour: maleCardColor,
                          cardChild: Gender(
                            genderName: 'MALE',
                            genderSign: FontAwesomeIcons.mars,
                          ))),
                ),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColor(NameOfGender.female);
                        });
                      },
                      child: ReusableCard(
                          colour: femaleCardColor,
                          cardChild: Gender(
                            genderName: 'FEMALE',
                            genderSign: FontAwesomeIcons.venus,
                          ))),
                ),
              ],
            ),
          ),
          Expanded(
              child: ReusableCard(
            colour: kActiveCardColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'HEIGHT',
                  style: kLabelTextStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  textBaseline: TextBaseline.alphabetic,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  children: [
                    Text(
                      height.toString(),
                      style: kNoTextStyle,
                    ),
                    Text(
                      'cm',
                      style: kLabelTextStyle,
                    )
                  ],
                ),
                
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    thumbColor: kPinkColor,
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                    overlayColor: Color(0x29EB1555),
                    activeTrackColor: Colors.white,
                    inactiveTrackColor: Colors.grey.shade400,

                  ),
                  child: Slider(
                    min: 120.0,
                    max: 220.0,

                    // inactiveColor: Colors.white,
                    value: height.toDouble(),
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  ),
                ),
              ],
            ),
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: ReusableCard(
                      colour: kActiveCardColor,
                      cardChild: Data(
                        onFirstPress: (){
                          setState(() {
                            weight--;
                          });
                        },
                        dataName: 'WEIGHT',
                        onSecondPress: (){
                          setState(() {
                            weight++;
                          });
                        },
                        // colour: kActiveCardColor,
                        count: weight,
                      ),
                    )),
                Expanded(
                    flex: 1,
                    child: ReusableCard(
                      colour: kActiveCardColor,
                      cardChild: Data(
                        onFirstPress: (){
                          setState(() {
                            age--;
                          });
                        },
                        onSecondPress: (){
                          setState(() {
                            age++;
                          });
                        },
                        count: age,
                        dataName: 'AGE',
                        // colour: kActiveCardColor,
                      ),
                    )),
              ],
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return EndPage(height: height,weight: weight,actualGender: NameOfGender.female,age: age,);
              }));
            },
            child: Container(
              color: kPinkColor,
              child: Center(child: Text('CALCULATE  BMI',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 30),)),
              width: double.infinity,
              height: 70,
              margin: EdgeInsets.only(top: 10),
            ),
          )
        ],
      ),
    );
  }
}
