import 'package:flutter/material.dart';
import 'package:passwordfield/passwordfield.dart';

class Password extends StatelessWidget {
  const Password({super.key, required this.passwordLabel});
  final String passwordLabel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: PasswordField(
        color: Colors.white,
        passwordDecoration: PasswordDecoration(
            inputStyle: const TextStyle(
          color: Colors.white,
        )),
        border: PasswordBorder(
          border: const OutlineInputBorder(),
        ),
        hintText: passwordLabel,
        backgroundColor: const Color.fromARGB(136, 91, 90, 90),
        errorMessage: 'Error',
      ),
    );
  }
}
