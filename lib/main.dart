import 'package:e_robot_school/screen/homepages/homage.dart';
import 'package:e_robot_school/screen/homepages/staetPage.dart';
import 'package:e_robot_school/screen/login_form/login_form.dart';
import 'package:e_robot_school/screen/login_form/sign_up.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    

    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: HomePageScreen(),
    //home: StartScreen(),
      // home: Login_Form(),
      //home: SignUpScreen(), 
    );
  }
}
