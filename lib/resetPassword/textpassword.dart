
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class textpassword extends StatelessWidget {
  String txt;
textpassword(this.txt);
  @override
  Widget build(BuildContext context) {
    return Text(
                txt,
                style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              );
  }
}