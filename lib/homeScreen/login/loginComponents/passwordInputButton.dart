import 'package:flutter/material.dart';
class passwordInputButton extends StatefulWidget {

  String hintTxt;
  passwordInputButton({required this.hintTxt});

  @override
  State<passwordInputButton> createState() => _passwordInputButtonState();
}

class _passwordInputButtonState extends State<passwordInputButton> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      //
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        autocorrect: true,
        obscureText: _obscureText,

        decoration: InputDecoration(
          // suffixIcon: const Padding(
          //   padding: EdgeInsets.all(0.0),
          //   child: Icon(
          //     Icons.password_rounded,
          //     color: Color(0xFF196FD5),
          //   ), // icon is 48px widget.
          // ),
          suffixIcon: Padding(
            padding: const EdgeInsets.all(0.0),
            child: IconButton(
              onPressed: () => setState(() => _obscureText = !_obscureText),
              icon: Icon(
                color: Color(0xFF196FD5),
                _obscureText ? Icons.visibility_off : Icons.visibility,
              ),
              iconSize: 18.0,
            ),
          ),
          hintStyle: const TextStyle(
            color: Color(0xFF196FD5),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          // labelText: 'User Name',
          hintText: '${widget.hintTxt}',
        ),
      ),
    );
  }
}
