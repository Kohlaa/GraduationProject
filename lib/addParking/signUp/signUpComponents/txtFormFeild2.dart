import 'package:flutter/material.dart';

class txtFormFeild2 extends StatelessWidget {
  String hntTxt;
  bool isPassword;

  txtFormFeild2(this.hntTxt, this.isPassword);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      width: 105.04,
      child: TextFormField(
        obscureText: isPassword,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          hintText: hntTxt,
          hintStyle: isPassword
              ? TextStyle()
              : TextStyle(
            color: Colors.grey[500],
          ),
          filled: true,
          fillColor: Colors.white,
        ),
        textAlign: TextAlign.center,
        textAlignVertical: TextAlignVertical.bottom,
      ),
    );
  }
}
