import 'package:flutter/material.dart';
import 'package:graduation_project_test/resetPassword/textpassword.dart';

class verify extends StatelessWidget {
  static const String routeName = "verify";

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
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 244.62),
        child: Center(
          child: Column(
            children: [
              const Icon(
                Icons.email_outlined,
                size: 80,
              ),
              const SizedBox(
                height: 35.62,
              ),
              const Text(
                "We have sent a message to your",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
              textpassword("email to verify your password"),
              const SizedBox(
                height: 18,
              ),
              Container(
                width: 180,
                height: 44,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: const Color.fromRGBO(25, 111, 213, 1)),
                child: const Center(
                  child: Text(
                    "Go to your email",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
