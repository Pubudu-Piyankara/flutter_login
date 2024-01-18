import 'package:flutter/material.dart';
import 'package:flutter_login/pages/dashboard.dart';
import 'package:flutter_login/pages/register.dart';
import 'package:flutter_login/widgets/password.dart';
import 'package:flutter_login/widgets/text_field.dart';
import 'package:flutter_login/widgets/button.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/logo.png',
                    ),
                    const TextFieldComponent(inputLabel: "Username"),
                    const Password(
                      passwordLabel: "Password",
                    ),
                    CustomButton(
                      buttonLabel: "Log In",
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Dashboard()));
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Forgot Password?",
                          style: TextStyle(color: Colors.white),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Click Here",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 160, 218, 243)),
                            ))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't have an account?",
                          style: TextStyle(color: Colors.white),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Register()));
                            },
                            child: const Text(
                              'Register Here',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 160, 218, 243)),
                            ))
                      ],
                    ),
                  ],
                ))));
  }
}
