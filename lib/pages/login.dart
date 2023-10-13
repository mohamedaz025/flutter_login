// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: //  لعمل زر عائم
          FloatingActionButton(
        onPressed: () {
          // Navigator.pushNamed(context, "/");   //   امر التوجه لصفحه وتترك الصفحع الحالية مفتوحة
          Navigator.pop(context, "/");        //  امر التوجه لصفحه مع قفل الصفحة الحالية
        },
        child: Icon(Icons.home), // لاضافة ايكونة داخل الزر
        backgroundColor: Colors.purple[400], // لتعير لون الزر
      ),


      appBar: AppBar(
        title: Text(
          "Login",
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.w800,
          ),
        ),
        backgroundColor: Colors.purple[200],
        centerTitle: true,
      ),



      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.purple[100],
                  borderRadius: BorderRadius.circular(50)),
              width: 266,
              child: TextField(
                // obscureText: false,
                // keyboardType: TextInputType.number,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  hintText: "Your name:",
                  hintStyle: TextStyle(fontSize: 15, color: Colors.grey[700]),
                  // labelText: "email",
                  // labelStyle: TextStyle(color: Colors.blue,fontSize: 35),
                  prefixIcon: Icon(Icons.person),
                  // suffixIcon: Icon(Icons.email),
                  // OutlineInputBorder(),
                  //// icon: Icon(Icons.email),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.purple[100],
                  borderRadius: BorderRadius.circular(50)),
              width: 266,
              child: TextField(
                //  لعمل مربع ادخال
                obscureText: true, //  لجعل المدخلات مشفره
                // keyboardType: TextInputType.number,   //  للتحكم في الكيبورد
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  hintText: "Password:", // ملاحظه داحل التيكست فيلد
                  hintStyle: TextStyle(fontSize: 15, color: Colors.grey[700]),
                  // labelText: "Password:",     // ملاحظه اعلي التيكست فيلد
                  // labelStyle: TextStyle(color: Colors.blue,fontSize: 15),
                  prefixIcon: Icon(Icons.lock), // لعمل ايكونه داخل التيكست فيلد
                  suffixIcon: Icon(Icons
                      .visibility), //  لعمل ايكونة داخل التيكست فيلد علي اليمين
                  // OutlineInputBorder(),
                  // icon: Icon(Icons.email),    // لعمل ايكونه خارج التيكست فيلد
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.purple),
                padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(horizontal: 110, vertical: 10)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(66))),
              ),
              child: Text(
                "log in",
                style: TextStyle(fontSize: 19, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
