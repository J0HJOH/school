import 'package:flutter/material.dart';
import 'package:school/ui/screen/log_in.dart';
import 'package:sizer/sizer.dart';

import '../../constants/colors.dart';
import '../widgets/buttons.dart';
import '../widgets/text_input_box.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController userName = TextEditingController();
  TextEditingController userDept = TextEditingController();
  TextEditingController userEmail = TextEditingController();
  TextEditingController userPassword = TextEditingController();

  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10.h,),

            Text(
              'Create an account',
              style: TextStyle(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w700
              ),
            ),

            SizedBox(height: 6.h,),

            Text(
              'Name',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 16
              ),
            ),

            SizedBox(height: 2.h,),

            Container(
              height: 6.h,
              width: 90.w,
              color: Color(0xFFD9D9D9),
              padding: EdgeInsets.only(left: 20),
              child: TextInputBox(
                  textController: userName,
                  hintText: 'Enter your name',
                  visible: true,
                  inputType: TextInputType.text,
                  suffixIcon: null
              ),
            ),

            SizedBox(height: 2.h,),

            Text(
              'Department',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 16
              ),
            ),

            SizedBox(height: 2.h,),

            Container(
              height: 6.h,
              width: 90.w,
              color: Color(0xFFD9D9D9),
              padding: EdgeInsets.only(left: 20),
              child: TextInputBox(
                  textController: userDept,
                  hintText: 'Enter your department',
                  visible: true,
                  inputType: TextInputType.text,
                  suffixIcon: null
              ),
            ),

            SizedBox(height: 2.h,),

            Text(
              'Email',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 16
              ),
            ),

            SizedBox(height: 2.h,),

            Container(
              height: 6.h,
              width: 90.w,
              color: Color(0xFFD9D9D9),
              padding: EdgeInsets.only(left: 20),
              child: TextInputBox(
                  textController: userEmail,
                  hintText: 'abcd@gmail.com',
                  visible: true,
                  inputType: TextInputType.emailAddress,
                  suffixIcon: null
              ),
            ),

            SizedBox(height: 2.h,),

            Text(
              'Password',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 16
              ),
            ),

            SizedBox(height: 2.h,),

            Container(
              height: 6.h,
              width: 90.w,
              color: Color(0xFFD9D9D9),
              padding: EdgeInsets.only(left: 20),
              child: TextInputBox(
                  textController: userPassword,
                  hintText: '*******',
                  visible: isVisible,
                  inputType: TextInputType.text,
                  suffixIcon: isVisible ? IconButton(
                    onPressed: () {
                      setState(() {
                        isVisible = false;
                      });
                    },
                    icon: Icon(Icons.visibility),
                  ) : IconButton(
                      onPressed: () {
                        setState(() {
                          isVisible = true;
                        });
                      },
                      icon: Icon(Icons.visibility_off)
                  )
              ),
            ),

            SizedBox(height: 8.h,),

            Container(
              width: 90.w,
              height: 6.h,
              child: MyButtons(
                  btnText: 'Sign Up',
                  btnColor: newGreen,
                  txtColor: Colors.white,
                  btnPressed: () {
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(
                        builder: (context) => LogInScreen())
                    );
                  }
              ),
            ),

            SizedBox(height: 2.h,),

            Row(
              children: [
                Text(
                  'Already have an account?  ',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.black
                  ),
                ),

                TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context, MaterialPageRoute(
                          builder: (context) => LogInScreen())
                      );
                    },
                    child: Text(
                      'Log In',
                      style: TextStyle(
                          color: newGreen,
                          fontWeight: FontWeight.w700
                      ),
                    )
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
