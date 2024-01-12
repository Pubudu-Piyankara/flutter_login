import 'package:flutter/material.dart';

class customButton extends StatelessWidget {
  const customButton({Key? key, required this.onPressed, required this.buttonLabel});
  final VoidCallback onPressed;
  final String buttonLabel;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(onPressed: onPressed, child: Text(buttonLabel));

    //   // onPressed: widget.onPressed, child: Text(buttonLabel)
    // );
  }
}
