import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.onPressed, required this.buttonLabel});
  final VoidCallback onPressed;
  final String buttonLabel;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
              const Color.fromARGB(255, 252, 222, 72)),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
          overlayColor: MaterialStateProperty.all<Color>(Colors.grey),
        ),
        onPressed: onPressed,
        child: Text(buttonLabel));

    //   // onPressed: widget.onPressed, child: Text(buttonLabel)
    // );
  }
}
