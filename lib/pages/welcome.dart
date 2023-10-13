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
          fontSize: 25,
          color: Colors.white,
          fontWeight: FontWeight.w900
          ),
          ),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              padding: EdgeInsets.fromLTRB(56, 80, 0, 0),
              child: 
              Text("Welcom" ,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w900,color: Colors.white) ,),

              width: 170,
              height: 170,
              decoration: BoxDecoration(
                color: Colors.blue,
                 borderRadius: BorderRadiusDirectional.circular(200)
                 
              ),
            ),
           SizedBox(height: 200,),
            ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/login");
            },
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
           SizedBox(height: 20,),
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
