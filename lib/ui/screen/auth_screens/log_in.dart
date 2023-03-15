import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../widgets/auth_background_design.dart';
import '../details/auth_detail.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {

  @override
  Widget build(BuildContext context) {
    return  AuthBackground(
        myWidget: AuthDetailPage(),
        widgetHeight: 40
    );
  }

}
