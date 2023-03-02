import 'package:flutter/material.dart';

class ntcontainers extends StatelessWidget {
  double width = 0;
  double height = 0;
  String txt;
  Color  contcolor;
  Color  txtcolor;
 
  ntcontainers(
      this.height,
       this.width,
        this.txt,
        this.contcolor,
        this.txtcolor,
          );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: contcolor),
      child: Center(
          child: Text(
        txt,
        style:   TextStyle(color:txtcolor),
      )),
      
      
    );
    
  }
}
