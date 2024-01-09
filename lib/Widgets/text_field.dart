import 'package:flutter/material.dart';

class textField extends StatelessWidget {
  const textField({super.key, required this.inputLabel});
  final String inputLabel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: TextFormField(
        // controller: myController,
        style: const TextStyle(
          color: Colors.white,
        ),
        decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: inputLabel,
            filled: true,
            fillColor: const Color.fromARGB(136, 91, 90, 90),
            labelStyle: const TextStyle(
              color: Colors.white,
            )),
      ),
    );
  }
}
