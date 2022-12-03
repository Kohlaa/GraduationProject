import 'package:flutter/material.dart';
import 'package:graduation_project_test/addParking/signUp/signUpComponents/txt.dart';
import 'package:graduation_project_test/addParking/signUp/signUpComponents/txtFormFeild.dart';
import 'package:graduation_project_test/addParking/signUp/signUpComponents/txtFormFeild2.dart';

class signUp2 extends StatelessWidget {
  static const String routeName = "singUp2-screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF196FD5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 230),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(right: 55, left: 56),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      txt('Gates'),
                      const SizedBox(
                        height: 8,
                      ),
                      txtFormFeild2('2', false),
                      const SizedBox(
                        height: 24,
                      ),
                      txt('Rounds'),
                      const SizedBox(
                        height: 8,
                      ),
                      txtFormFeild2('4', false),
                      const SizedBox(
                        height: 24,
                      ),
                      txt('Floor Capacity'),
                      const SizedBox(
                        height: 8,
                      ),
                      txtFormFeild2('100', false),
                      const SizedBox(
                        height: 24,
                      ),
                      txt('Full Capacity'),
                      const SizedBox(
                        height: 8,
                      ),
                      txtFormFeild2('400', false),
                      const SizedBox(
                        height: 94,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: InkWell(
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
                      ),
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
