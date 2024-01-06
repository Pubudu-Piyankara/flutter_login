import 'package:flutter/material.dart';

class textField extends StatelessWidget {
  const textField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // controller: myController,
      decoration: const InputDecoration(
        border: UnderlineInputBorder(),
        labelText: 'Enter your username',
      ),
    );
  }
}
