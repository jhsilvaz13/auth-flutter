import 'package:flutter/material.dart';

class InputLogin extends StatelessWidget {
  final String hint;
  final bool isPassword;

  const InputLogin({
    super.key,
    required this.hint,
    required this.isPassword,
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: TextField(
        obscureText: isPassword,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          filled: true,
          fillColor: Colors.white,
          hintText: hint,
          hintStyle: TextStyle(
            color: Color.fromARGB(255, 221, 221, 221),
          ),
        ),
      ),
    );
  }
}
