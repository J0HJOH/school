import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:sizer/sizer.dart';

import '../../../constants/colors.dart';
import '../../widgets/buttons.dart';
import '../../widgets/text_input_box.dart';
import '../auth_screens/forgot_password.dart';
import '../home/home_screen.dart';

class AuthDetailPage extends StatefulWidget {
  const AuthDetailPage({Key? key}) : super(key: key);

  @override
  State<AuthDetailPage> createState() => _AuthDetailPageState();
}

class _AuthDetailPageState extends State<AuthDetailPage> {
  TextEditingController userEmail = TextEditingController();
  TextEditingController userPassword = TextEditingController();

  bool isVisible  = true;
  bool isChecked = false;

  late Box box1;

  @override
  void initState() {
    createBox();
    super.initState();
  }

  void createBox() async {
    box1 = await Hive.openBox('loginData');
    getData();
  }

  void getData() async {
    if(box1.get('email') != null){
      userEmail.text = box1.get('email');
      isChecked = true;
      setState(() {});
    }
    if(box1.get('password') != null){
      userPassword.text = box1.get('password');
      isChecked = true;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                child: Text(
                    'Login',
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
              'Password',
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

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
                      'Remember me',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 16
                      ),
                    ),
                  ],
                ),

                TextButton(
                    onPressed: (){
                      Navigator.pushReplacement(
                          context, MaterialPageRoute(
                          builder: (context) => ForgotPassword())
                      );
                    },
                    child: Text(
                        'Forgot Password?',
                      style: TextStyle(
                        decoration:   TextDecoration.underline,
                        fontWeight: FontWeight.w400,
                        fontSize: 16
                      ),
                    )
                )
              ],
            ),

            SizedBox(height: 8.h,),

            Container(
              width: 90.w,
              height: 6.h,
              child: MyButtons(
                  btnText: 'Login',
                  btnColor: newGreen,
                  txtColor: Colors.white,
                  btnPressed: () {
                    login();
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(
                        builder: (context) => HomeScreen())
                    );
                  }
              ),
            ),

          ],
        ),
      ),
    );
  }

  void login() {
    if(isChecked){
      box1.put('email', userEmail.text);
      box1.put('password', userPassword.text);
    }
  }
}
