import 'package:flutter/material.dart';
import 'package:school/constants/colors.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> departments = [
    'Chemical Engineering',
    'Civil Engineering',
    'Electrical Engineering',
    'Computer Engineering',
    'Mechatronics Engineering',
    'Mechanical Engineering'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: GridView.builder(
          itemCount: departments.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 4.w
            ),
            itemBuilder: (context, index) {
              return Card(
                color: Colors.white,
                elevation: 20,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(
                    color: newGreen,
                    width: 4.0
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                        departments[index],
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                  ),
                ),
              );
            }
        ),
      ),
    );
  }
}
