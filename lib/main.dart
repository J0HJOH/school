import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:school/ui/screen/first_screen.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(DevicePreview(builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent),
    );

    return Sizer(
        builder: (context, orientation, deviceType) {
          return MaterialApp(
            title: 'FUNAI APP',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                primarySwatch: Colors.green,
                fontFamily: 'georgia'
            ),
            home: const FirstScreen(),
          );
        }
    );
  }
}


