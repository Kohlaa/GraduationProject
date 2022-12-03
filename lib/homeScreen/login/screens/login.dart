import 'package:flutter/material.dart';
import 'package:graduation_project_test/homeScreen/login/loginComponents/emailInputButton.dart';
import 'package:graduation_project_test/homeScreen/login/loginComponents/loginButton.dart';
import 'package:graduation_project_test/homeScreen/login/loginComponents/loginWith.dart';
import 'package:graduation_project_test/homeScreen/login/loginComponents/passwordInputButton.dart';
import 'package:graduation_project_test/homeScreen/register/register.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = "login-screen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
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
              margin: const EdgeInsets.all(18),
              height: 160.0,
              width: 190.0,
              padding: const EdgeInsets.only(top: 40),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
              ),
              child: Stack(alignment: Alignment.bottomCenter, children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Center(
                    child: Image.asset('assets/images/log_ic.png'),
                  ),
                ),
                const Text(
                  "Login",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      color: Color(0xFF242424)),
                  textAlign: TextAlign.center,
                ),
              ]),
            ),
            const Text(
              "Being ready to park 😀 ",
              style: TextStyle(
                  color: Color(0xFF242424),
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20,),
            emailInputButton(title: 'email'),
            SizedBox(height: 10,),
            passwordInputButton(hintTxt: 'password',),
            const SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                InkWell(
                    child: const Text(
                      '?Forgot Password',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        //Poppins    //fontFamily: 'assets/googleFonts/Poppins-Bold.ttf',
                        color: Color(0xFFD73131),
                      ),
                    ),
                    onTap: () {}),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
           loginButton(btnTxt: 'Login'),
            const SizedBox(height: 30),
            const Text('Or continue with',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color(0xFF787878),
                )),
            const SizedBox(
              height: 20,
            ),
            loginWith(),
            const SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  const Text('Don\'t have account?',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF242424))),
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => register()),
                    ),
                    child: const Text(
                      'Sign up',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF196FD5)),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
