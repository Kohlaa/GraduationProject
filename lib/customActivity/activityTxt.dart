import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class activitytxt extends StatelessWidget {
String txt;
double font;
FontWeight fontWei;
activitytxt(
  this.txt,
  this.font,
  this.fontWei,
);
  @override
  Widget build(BuildContext context) {
    return  Text(
      txt, style:  TextStyle(fontSize: font,fontWeight: fontWei),
    );
  }
}