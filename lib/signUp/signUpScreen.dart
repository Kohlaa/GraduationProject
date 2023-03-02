import 'package:flutter/material.dart';
import 'package:graduation_project_test/signUp/signUpComponents/txt.dart';
import 'package:graduation_project_test/signUp/signUpComponents/txtFormFeild.dart';
import 'package:graduation_project_test/signUp/signUpScreen2.dart';

class signUp extends StatelessWidget {
  static const String routeName = "singUp-screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF196FD5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 218),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(right: 55, left: 56),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      txt('Park Name'),
                      const SizedBox(
                        height: 8,
                      ),
                      txtFormFeild('Mid Town Parker', false),
                      const SizedBox(
                        height: 32,
                      ),
                      txt('Park Email'),
                      const SizedBox(
                        height: 8,
                      ),
                      txtFormFeild('MidTown2@gmail.com', false),
                      const SizedBox(
                        height: 32,
                      ),
                      txt('Park Password'),
                      const SizedBox(
                        height: 8,
                      ),
                      txtFormFeild('', true),
                      const SizedBox(
                        height: 32,
                      ),
                      txt('Confirm Password'),
                      const SizedBox(
                        height: 8,
                      ),
                      txtFormFeild('', true),
                      const SizedBox(
                        height: 82,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => signUp2()),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Next',
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        color: Color(0xFFFFFFFF),
                      )),
                  Image.asset('assets/images/gif.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
