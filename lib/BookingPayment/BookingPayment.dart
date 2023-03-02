import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:graduation_project_test/signUp/signUpComponents/txt.dart';

class BookingPayment extends StatefulWidget {
  static const String routeName = "BookingPayment";

  @override
  State<BookingPayment> createState() => _BookingPaymentState();
}

class _BookingPaymentState extends State<BookingPayment> {
  int val = 1;

  String? payment;
 

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
          "Booking Confirmation",
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 51, horizontal: 21),
        child: Column(
          children: [
            const Text(
              "Select Payment Mode",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            const SizedBox(
              height: 18,
            ),
            Container(
            width: 339,
            height: 55,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: const Color.fromRGBO(25, 111, 213, 1)),
            child: RadioListTile(
              activeColor: Colors.white,
              value: "cash",
              groupValue: payment,
              onChanged: (val) {
                setState(() {
                  payment = val;
                  Navigator.pushNamed(context, "BookingConfirmation");
                });
              },
              title: const Text(
                "Cash on delivery",
                style: TextStyle(color: Colors.white),
              ),
              secondary:  const Icon(Icons.attach_money,color: Colors.white,),
              controlAffinity: ListTileControlAffinity.trailing,
            ),
          ),
            const SizedBox(
              height: 14,
            ),
          Container(
            width: 339,
            height: 55,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: const Color.fromRGBO(25, 111, 213, 1)),
            child: RadioListTile(
              activeColor: Colors.white,
              value: "credit",
              groupValue: payment,
              onChanged: (val) {
                setState(() {
                  payment = val;

                });
              },
              title: const Text(
                "Credit card",
                style: TextStyle(color: Colors.white),
              ),
              secondary:  const Icon(Icons.credit_card,color: Colors.white,),
              controlAffinity: ListTileControlAffinity.trailing,
            ),
          ),
            const SizedBox(
              height: 472,
            ),
            Container(
              width: 265,
              height: 44,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: const Color.fromRGBO(25, 111, 213, 1)),
              child: const Center(
                child: Text(
                  "Confirm",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

 
}
