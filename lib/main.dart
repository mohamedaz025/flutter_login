// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';            // أساس الكود                                                               
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
      home: login(),
    );
  }
}



class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(


    body: 
    SizedBox(
      width: double.infinity,
      child: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
            color: Colors.purple[100],
            borderRadius: BorderRadius.circular(50)
            ),
            
            width: 266,
            child: TextField(
              // obscureText: false,
              // keyboardType: TextInputType.number,
              textInputAction: TextInputAction.done,
              decoration:InputDecoration(
                hintText: "Your name:",
                hintStyle: TextStyle(fontSize: 15,color: Colors.grey[700]),
                // labelText: "email",
                // labelStyle: TextStyle(color: Colors.blue,fontSize: 35),
                prefixIcon: Icon(Icons.person),
                // suffixIcon: Icon(Icons.email),
                // OutlineInputBorder(),
                //// icon: Icon(Icons.email),
                border: 
                  InputBorder.none,   
              ) ,
            ),
          ),
          SizedBox(height: 20,),
             Container(
            decoration: BoxDecoration(
            color: Colors.purple[100],
            borderRadius: BorderRadius.circular(50)
            ),
            
            width: 266,
            child: 
            TextField(  //  لعمل مربع ادخال 
              obscureText: true,    //  لجعل المدخلات مشفره
              // keyboardType: TextInputType.number,   //  للتحكم في الكيبورد
              textInputAction: TextInputAction.done,
              decoration:InputDecoration(
                hintText: "Password:",  // ملاحظه داحل التيكست فيلد
                hintStyle: TextStyle(fontSize: 15,color: Colors.grey[700]),
                // labelText: "Password:",     // ملاحظه اعلي التيكست فيلد
                // labelStyle: TextStyle(color: Colors.blue,fontSize: 15),
                prefixIcon: Icon(Icons.lock),    // لعمل ايكونه داخل التيكست فيلد
                suffixIcon: Icon(Icons.visibility),   //  لعمل ايكونة داخل التيكست فيلد علي اليمين
                // OutlineInputBorder(),
                // icon: Icon(Icons.email),    // لعمل ايكونه خارج التيكست فيلد
                border: 
                  InputBorder.none,   
              ) ,
            ),
          ),
    
    SizedBox(height:20,)   ,   
    


    ElevatedButton(
   onPressed: (){},
   style: ButtonStyle(
     backgroundColor: MaterialStateProperty.all(Colors.purple),
     padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 110,vertical: 10)),
     shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(66))),
  ),
   child: Text("log in", style: TextStyle(fontSize: 19,color: Colors.white),),
),

                 

    
    
    
        ],
      ),
    ),



    );
  }
}





