import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../CarDetails/CarDetailsNT/CarDetailsComponents/NT_containers.dart';
import 'activityTxt.dart';

class activityContainer extends StatelessWidget {
  String txt;
  String date;
  String cost;

  activityContainer(
    this.txt,
    this.date,
    this.cost,
  );

  @override
  Widget build(BuildContext context) {
    return  Container(
              width:162 ,
              height:165 ,
              decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(14),color: const Color.fromRGBO(238, 241, 244, 1)),
              child: Column(
                children:  [
                  
            Padding(
              padding: const EdgeInsets.only(top: 12,left: 50),
              child: ntcontainers(24, 77, txt, const Color.fromRGBO(25, 111, 213, 1), Colors.white),
            ),
            const SizedBox(height: 12,),
            activitytxt("Mid Town Parker", 14, FontWeight.w600),
            const SizedBox(height: 4,),
            activitytxt(date,12 , FontWeight.w400),
            const SizedBox(height: 4,),
            activitytxt(cost, 12, FontWeight.w600),
            const SizedBox(height: 10,),
            
            ntcontainers(28, 74, "5 EGP/hr", const Color.fromRGBO(50,50,50,1), Colors.white),

                ],
                
              ),
            );
  }
}