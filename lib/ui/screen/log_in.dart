import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:sizer/sizer.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  TextEditingController userEmail = TextEditingController();
  TextEditingController userPassword = TextEditingController();

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
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text('Log in'),

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

                SizedBox(width: 3.w,),

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
