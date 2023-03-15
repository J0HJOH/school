import 'package:flutter/material.dart';

class MyButtons extends StatefulWidget {
  final String btnText;
  final Color btnColor;
  final Color txtColor;
  final btnPressed;
  const MyButtons({
    Key? key,
    required this.btnText,
    required this.btnColor,
    required this.txtColor,
    required this.btnPressed
  }) : super(key: key);

  @override
  State<MyButtons> createState() => _MyButtonsState();
}

class _MyButtonsState extends State<MyButtons> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed:
            widget.btnPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: widget.btnColor,
          elevation: 20,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
              widget.btnText,
            style: TextStyle(
              color: widget.txtColor,
              fontWeight: FontWeight.w700,
              fontSize: 16
            ),
          ),
        )
    );
  }
}
