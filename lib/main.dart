// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_login/pages/login.dart';      // تعريف الصفحات
import 'package:flutter_login/pages/singup.dart';     // تعريف الصفحات
import 'package:flutter_login/pages/welcome.dart';    // تعريف الصفحات                                                                  
void main() {// أساس الكود 
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  //   لازالوة العلامة المائيه
      theme: ThemeData.light(useMaterial3: true),


      initialRoute: '/',    // اسم اول صفحة تفتح للمستخدم
      routes: {      // تعريف الصفحات
        '/': (context) => const Welcome(),   // تعريف الصفحات
        "/login" : (context) => const login(),
        "/singup" : (context) => const Singup(),
      },
    );
  }
}









