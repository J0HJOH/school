import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TextInputBox extends StatefulWidget {
  final TextEditingController textController;
  final String hintText;
  final bool visible;
  final TextInputType inputType;
  final Widget? suffixIcon;
  const TextInputBox({
    Key? key,
    required this.textController,
    required this.hintText,
    required this.visible,
    required this.inputType,
    required this.suffixIcon
  }) : super(key: key);

  @override
  State<TextInputBox> createState() => _TextInputBoxState();
}

class _TextInputBoxState extends State<TextInputBox> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.textController,
      keyboardType: widget.inputType,
      maxLines: 1,
      obscureText: widget.visible
          ? false
          : true,
      decoration: InputDecoration(
        suffixIcon: widget.suffixIcon,
        border: InputBorder.none,
        hintText: widget.hintText,
        hintStyle: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
        ),
      ),
      style: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        backgroundColor: Color(0xFFD9D9D9)
      ),
    );
  }
}
