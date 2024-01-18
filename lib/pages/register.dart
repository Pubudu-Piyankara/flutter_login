import 'package:flutter/material.dart';
import 'package:flutter_login/pages/dashboard.dart';
import 'package:flutter_login/pages/login.dart';
import 'package:flutter_login/widgets/button.dart';
import 'package:flutter_login/widgets/password.dart';
import 'package:flutter_login/widgets/text_field.dart';

class Register extends StatelessWidget {
  const Register({super.key});

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
              const TextFieldComponent(inputLabel: "FirstName"),
              const TextFieldComponent(inputLabel: "LastName"),
              const TextFieldComponent(inputLabel: "Email"),
              const Password(passwordLabel: "Password"),
              const Password(passwordLabel: "Conform Password"),
              CustomButton(
                  onPressed: () {
                    Navigator.pop(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Dashboard()));
                  },
                  buttonLabel: "Register"),
                  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account?",
                  style: TextStyle(color: Colors.white),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LogIn()));
                    },
                    child: const Text(
                      'Login Here',
                      style:
                          TextStyle(color: Color.fromARGB(255, 160, 218, 243)),
                    ))
              ],
            ),
            ],
            ),
          ),
        ));
  }
}
