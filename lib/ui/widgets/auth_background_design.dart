import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AuthBackground extends StatefulWidget {
  final Widget myWidget;
  final int widgetHeight;
  const AuthBackground({
    Key? key,
    required this.myWidget,
    required this.widgetHeight
  }) : super(key: key);

  @override
  State<AuthBackground> createState() => _AuthBackgroundState();
}

class _AuthBackgroundState extends State<AuthBackground> {

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/tree.jpg')),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body:  Stack(
          children: [
            Positioned.fill(
                top: widget.widgetHeight.h,
                bottom: -100,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: widget.myWidget,
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(35)
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }

}
