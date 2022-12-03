import 'package:flutter/material.dart';
import 'package:graduation_project_test/homeScreen/register/registerComponents/checkBox.dart';

import '../login/loginComponents/emailInputButton.dart';
import '../login/loginComponents/loginButton.dart';
import '../login/loginComponents/passwordInputButton.dart';
import '../login/screens/login.dart';


class register extends StatefulWidget {
  static const String routeName = "register-screen";

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_outlined,
            color: Color(0xFF242424),
          ),
        ),
      ),
      body: ListView(children: [
        Column(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              // margin: EdgeInsets.all(18),
              height: 192.0,
              width: 193.0,
              // padding: const EdgeInsets.only(top: 40),

              child: Center(
                child: Image.asset('assets/images/Rectangle.png'),
              ),
            ),
            Container(
              height: 36,
              width: 239,
              child: const Text(
                "Create an account ",
                style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 24,
              width: 269,
              child: const Text(
                "Welcome to our community ☺ 🅿️",
                style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            emailInputButton(title: 'Full name'),
            emailInputButton(title: 'Email'),
            passwordInputButton(
              hintTxt: 'Password',
            ),
            passwordInputButton(
              hintTxt: 'Confirm password',
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              height: 36,
              width: 307,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  checkBox(),
                  const Text('I agree to our ',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF000000))),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      'Terms & Conditions ',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF196FD5)),
                    ),
                  ),
                  const Text('and ',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF000000))),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      'Privacy',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF196FD5)),
                    ),
                  ),
                ],
              ),
            ),
            loginButton(btnTxt: 'Create an account'),
            const SizedBox(height: 10),
            Container(
              width: 199,
              height: 18,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have an account?',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF000000))),
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF196FD5)),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20)
          ],
        ),
      ]),
    );
  }
}
