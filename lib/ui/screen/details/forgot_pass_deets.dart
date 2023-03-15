import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../constants/colors.dart';
import '../../widgets/buttons.dart';
import '../../widgets/text_input_box.dart';
import '../auth_screens/log_in.dart';

class ForgotPassDeets extends StatefulWidget {
  const ForgotPassDeets({Key? key}) : super(key: key);

  @override
  State<ForgotPassDeets> createState() => _ForgotPassDeetsState();
}

class _ForgotPassDeetsState extends State<ForgotPassDeets> {
  TextEditingController userEmail = TextEditingController();
  TextEditingController userPassword = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  TextEditingController userPhrase = TextEditingController();
  bool isVisible = true;
  bool isChecked = false;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 5.h),
              child: Text(
                'New Password',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 25.sp
                ),
              )
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

          SizedBox(height: 1.h,),

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
            'New Password',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 16
            ),
          ),

          SizedBox(height: 1.h,),

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

          SizedBox(height: 2.h,),

          Text(
            'Confirm Password',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 16
            ),
          ),

          SizedBox(height: 1.h,),

          Container(
            height: 6.h,
            width: 90.w,
            color: Color(0xFFD9D9D9),
            padding: EdgeInsets.only(left: 20),
            child: TextInputBox(
                textController: confirmPassword,
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

          SizedBox(height: 2.h,),

          Text(
            'Phrase',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 16
            ),
          ),

          SizedBox(height: 1.h,),

          Container(
            height: 6.h,
            width: 90.w,
            color: Color(0xFFD9D9D9),
            padding: EdgeInsets.only(left: 20),
            child: TextInputBox(
                textController: userPhrase,
                hintText: 'enter any phrase',
                visible: true,
                inputType: TextInputType.emailAddress,
                suffixIcon: null
            ),
          ),

          Row(
            children: [
              Checkbox(
                value: isChecked,
                onChanged: (value){
                  isChecked = !isChecked;
                  setState(() {
                  });
                },
              ),

              SizedBox(width: 2.w,),

              Text(
                'Use phrase to log in',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 16
                ),
              ),
            ],
          ),

          SizedBox(height: 8.h,),

          Container(
            width: 90.w,
            height: 6.h,
            child: MyButtons(
                btnText: 'Back to log in Page',
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

        ],
      ),
    );
  }
}
