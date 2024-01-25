import 'package:flutter/material.dart';
import 'components/input_login.dart';
import 'components/button.dart';
import 'components/square_tile.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  //sign in button
  void _onTap() {
    print('Login button pressed');
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color.fromRGBO(224, 224, 224, 1),
        body: SafeArea(
            child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 200,
              ),
              //Welcome text
              const Text(
                'Bienvenido a mi app',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(
                height: 20,
              ),

              //username input
              const InputLogin(
                hint: 'Username',
                isPassword: false,
              ),
              const SizedBox(
                height: 10,
              ),
              //password input
              const InputLogin(
                hint: 'Password',
                isPassword: true,
              ),
              const SizedBox(
                height: 10,
              ),
              //forgot password
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot password?',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
              ),

              //login button
              const SizedBox(
                height: 20,
              ),

              Button(onTap: _onTap),
              const SizedBox(
                height: 20,
              ),

              // or
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                    ),
                  ],
                ),
              ),
              //social media icons
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(imagePath: 'assets/images/logo_google.png'),
                  SquareTile(imagePath: 'assets/images/logo_facebook.png'),
                ],
              ),
              const SizedBox(
                height: 100,
              ),

              //sign up

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Sign up',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )));
  }
}
