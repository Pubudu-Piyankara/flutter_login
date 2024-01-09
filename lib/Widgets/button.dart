import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  const Button({Key? key, required this.onPressed, required this.buttonLabel});
  final VoidCallback onPressed;
  final String buttonLabel;

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        setState(() {});
      },
      child: const TextStyle(),

      // onPressed: widget.onPressed, child: Text(buttonLabel)
    );
  }
}
