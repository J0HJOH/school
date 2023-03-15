import 'package:flutter/material.dart';
import 'package:school/ui/screen/auth_screens/log_in.dart';
import 'package:school/ui/screen/auth_screens/sign_up.dart';
import 'package:sizer/sizer.dart';

import '../../../constants/colors.dart';
import '../../widgets/buttons.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
            image: AssetImage('fantasy.jpg')),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black12,
              Colors.black26,
              Colors.black38,
              Colors.black45,
              Colors.black87
            ]
          )
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 38.h),
                  child: Text(
                    'AE-FUNAI PORTAL',
                    style: TextStyle(
                      fontSize: 56,
                      fontWeight: FontWeight.w700,
                      color: Colors.white
                    ),
                  ),
                ),

                Text(
                    '...one stop for your academic needs',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                    color: Colors.white
                  ),
                ),

                SizedBox(height: 10.h,),

                Container(
                  width: 90.w,
                  height: 6.h,
                  child: MyButtons(
                      btnText: 'Sign Up',
                      btnColor: newGreen,
                      txtColor: Colors.white,
                      btnPressed: (){
                        Navigator.pushReplacement(
                            context, MaterialPageRoute(
                            builder: (context)=> SignUpScreen())
                        );
                      }
                  ),
                ),
                SizedBox(height: 2.h,),

                Container(
                  width: 90.w,
                  height: 6.h,
                  child: MyButtons(
                      btnText: 'Login',
                      btnColor: Colors.white70,
                      txtColor: newGreen,
                      btnPressed: (){
                        Navigator.push(
                            context, MaterialPageRoute(
                            builder: (context)=> LogInScreen())
                        );
                      }
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
