import 'package:flutter/material.dart';

class txtFormFeild extends StatelessWidget {
  String hntTxt;
  bool isPassword;

  txtFormFeild(this.hntTxt, this.isPassword);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      width: 279,
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
