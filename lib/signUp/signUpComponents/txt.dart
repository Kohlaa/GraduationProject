import 'package:flutter/cupertino.dart';

class txt extends StatelessWidget {
  String text;

  txt(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: const TextStyle(
          color: Color(0xFFFFFFFF),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
          fontSize: 21,
        )
    );
  }
}