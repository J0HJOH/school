import 'package:flutter/material.dart';

import '../../widgets/auth_background_design.dart';
import '../details/forgot_pass_deets.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return AuthBackground(
        myWidget: ForgotPassDeets(),
        widgetHeight: 20
    );
  }
}
