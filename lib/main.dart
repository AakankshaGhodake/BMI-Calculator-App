import 'package:bmi_calci/end_page.dart';
import 'package:flutter/material.dart';
import './input_page.dart';
import './end_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      home: InputPage(),
      theme: ThemeData.dark().copyWith(
        // primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      )
    );
  }
}



