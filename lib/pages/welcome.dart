// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("welcome",style: TextStyle(
          fontFamily: "font1",
          fontSize: 25,
          color: Colors.white,
          fontWeight: FontWeight.w900
          ),
          ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.orange[500],
        width: double.infinity,    // لعمل الكونتينر عرض علي حسب الشاشه
        child: 
        Column(    //  لترتيب العناصر باطول
          mainAxisAlignment: MainAxisAlignment.center,  // لجعل المحتويات في النتصف علي محور الطول
          crossAxisAlignment: CrossAxisAlignment.center,   // لجعل المحتويات في النتصف علي محور العرض
          children: [
            
           
           
            ElevatedButton(        //  لعمل زر بداخلة كلمة
            onPressed: () {    //  تنفيذ الامر عند الضغط
              Navigator.pushNamed(context, "/login"); // امر الانتقال لصفحة
            },
            style: ButtonStyle(    // لعمل استايل للزر
              backgroundColor: MaterialStateProperty.all(Colors.purple),
              padding:  // لتحديد عرض وطول الزر   
              MaterialStateProperty.all(
              EdgeInsets.symmetric(
              horizontal: 110,
              vertical: 10)),

              shape:    //  لعمل حواف مستديره للزر
              MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(66))),
              ),

            child: Text(   // للكتابة داخل الزر
              "log in",
              style: TextStyle(fontFamily: "font2",
                fontSize: 19, color: Colors.white),
            ),
          ),


           SizedBox(height: 20,),    // لعمل مسافة بين كل محتوي
           ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/singup");
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.purple),
              padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(horizontal: 106, vertical: 10)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(66))),
            ),
            child: Text(
              "Singup",
              style: TextStyle(fontSize: 19, color: Colors.white),
            ),
          ),
         ],
        ),
      )







      
    );
  }
}
