import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:graduation_project_test/CarDetails/CarDetailsNT/CarDetailsComponents/NT_containers.dart';

import 'activityContainer.dart';
import 'activityTxt.dart';

class Activity extends StatelessWidget {
  static const String routeName = "Activity";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back_ios_new_outlined,
          color: Colors.black,
        ),
        title: const Text(
          "Activity",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 67.5, horizontal: 24),
                  child: activityContainer("12 Jan", "1 pm - 3 pm", "15 EGP")),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 67.5, horizontal: 5),
                child: activityContainer("10 Dec", "5 pm - 6 pm", "5 EGP"),
              ),
            ],
          ),
         
             Padding(
               padding: const EdgeInsets.only(left: 24),
               child: activityContainer("25 May", "5 am - 10 am", "25 EGP"),
             ),
          
        ],
      ),
    );
  }
}
