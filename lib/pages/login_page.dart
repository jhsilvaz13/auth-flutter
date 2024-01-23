import 'package:flutter/material.dart';
import 'components/input_login.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color.fromRGBO(224, 224, 224, 1),
        body: SafeArea(
            child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 200,
              ),
              //Welcome text
              Text(
                'Bienvenido a mi app',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(
                height: 20,
              ),

              //username input
              InputLogin(
                hint: 'Username',
                isPassword: false,
              ),
              SizedBox(
                height: 10,
              ),

              InputLogin(
                hint: 'Password',
                isPassword: true,
              ),
            ],
          ),
        )));
  }
}
