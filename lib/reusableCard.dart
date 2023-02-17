import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget{
  ReusableCard({required this.colour ,  required this.cardChild});
  final Color colour;
  final Widget cardChild;

  Widget build(BuildContext context){
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10)),
    );
  }
}