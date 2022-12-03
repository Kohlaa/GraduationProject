import 'package:flutter/cupertino.dart';

class addParkingTxt extends StatelessWidget {
  String text;

  addParkingTxt(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Color(0xFFFFFFFF),
        fontFamily: 'Racing Sans One',
        fontWeight: FontWeight.w400,
        fontSize: 48,
      ),
    );
  }
}
