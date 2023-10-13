// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_login/pages/login.dart';
import 'package:flutter_login/pages/singup.dart';
import 'package:flutter_login/pages/welcome.dart';            // أساس الكود                                                               
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),


      initialRoute: '/',    //

      routes: {
        '/': (context) => const Welcome(),
        "/login" : (context) => const login(),
        "/singup" : (context) => const Singup(),
      },
    );
  }
}









