import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  // String username="";
  String Aadhar = "";
  String Password="";
  String Name = "";
  String Email = "";

  void _Signup(){
    print(Aadhar);
    print(Password);
    print(Name);
    print(Email);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        body: Center(
          
          child:Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Color.fromARGB(255, 215, 219, 218),
            ),
            margin:EdgeInsets.only(bottom: 20),
            
            height: MediaQuery.sizeOf(context).height/1.2,
            width:MediaQuery.sizeOf(context).width/1.2,
            child: SingleChildScrollView(
              child: Column(
              
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 10,),
                      Image(image: AssetImage("assets/logo.png",),height: 90 ,),
                    ],
                  ),

                  
                  Container(
                    margin: EdgeInsets.only(bottom: 15),
                    // decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.white))),
                    child:Text("Sign Up",
                      style:GoogleFonts.poppins(
                        color:Colors.black,
                        letterSpacing: -0.9,
                        fontWeight: FontWeight.w600,
                        fontSize:30,
                      )
              
                    )
                  ),
                  SizedBox(height: 30,child: Container(
                    decoration: BoxDecoration(border: Border(top: BorderSide(color: const Color.fromRGBO(245, 245, 245, 1)))),
                  ),),
                  
                  Container(
                    padding: EdgeInsets.only(right:20,left:15),
                    child: TextField(
                        onChanged: (value) => {
                        setState(() {
                          Name=value;
                        },)
                      },
                      selectionHeightStyle: BoxHeightStyle.max,
                      decoration: InputDecoration(
                        hintText: "Name",
                        fillColor: Colors.white,
                        icon: Icon(Icons.person,size:35,color: Colors.white),
                        filled: true
                      )
                    ),
                    
                  ),
                  SizedBox(height: 50,),
                  
                  Container(
                    padding: EdgeInsets.only(right:20,left:15),
                    child: TextField(
                        onChanged: (value) => {
                        setState(() {
                          Aadhar=value;
                        },)
                      },
                      selectionHeightStyle: BoxHeightStyle.max,
                      decoration: InputDecoration(
                        hintText: "Aadhar",
                        fillColor: Colors.white,
                        icon: Icon(Icons.account_circle_sharp,size:35,color: Colors.white),
                        filled: true
                      )
                    ),
                    
                  ),
                  SizedBox(height: 50,),
              
                  Container(
                    padding: EdgeInsets.only(right:20,left:15),
                    child: TextField(
                        onChanged: (value) => {
                        setState(() {
                          Email=value;
                        },)
                      },
                      selectionHeightStyle: BoxHeightStyle.max,
                      decoration: InputDecoration(
                        hintText: "E-Mail",
                        fillColor: Colors.white,
                        icon: Icon(Icons.mail_rounded,size:35,color: Colors.white),
                        filled: true
                      )
                    ),
                    
                  ),
                  SizedBox(height: 50,),
              
                  Container(
                    padding: EdgeInsets.only(right:20,left:15),
                    child: TextField(
                      onChanged: (value) => {
                        setState(() {
                          Password=value;
                        },)
                      },
                      obscureText: true,
                      
                      decoration: InputDecoration(
                        hintText: "Password",
                        
                        fillColor: Colors.white,
                        icon: Icon(Icons.key,size:35,color: Colors.white),
                        filled: true
                      )
                    )
                  ),
                  SizedBox(height: 70,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      
                      ElevatedButton(
                        onPressed: _Signup,
                      child: Container(
                        height: 50,
                        width:100,
                        child: Center(child:Text("Sign Up",style:GoogleFonts.poppins(letterSpacing: 2, fontWeight: FontWeight.w600, fontSize: 18, color:Colors.black))),
                      ))
                    ],
                  )
                ],
              
              ),
            ),
          )
        ),
      );
  }
}