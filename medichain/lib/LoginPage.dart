import 'dart:convert';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:medichain/SignUpPage.dart';
import 'package:shared_preferences/shared_preferences.dart';
// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("MediChain",
//           style:GoogleFonts.poppins(
//             color: Colors.white,
//             fontWeight: FontWeight.w500
//           )
//         ),
//         backgroundColor: Colors.green,
//       ),
//       body: Center(
        
//         child: Container(
//           // color: Colors.green,
//           height: MediaQuery.sizeOf(context).height/1.6,
//           width: MediaQuery.sizeOf(context).width/1.3,
//           margin: EdgeInsets.only(bottom: 70),
//           decoration: const BoxDecoration(
//             color:Color.fromARGB(255, 215, 219, 218),
//             boxShadow: [BoxShadow(
//               color: Colors.grey,
//               blurRadius: 10.0,
//               spreadRadius: 2.0,
//             )]
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Container(
//                 height: 200,
//                 width: 200,
//                 child: Image.asset("assets/logo.png",)),

//               TextFormField(
                
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username="";
  String Password="";
  bool isLoggedIn=false;
  void _setLogin() async{
    print(username);
    try{
      final response = await http.get(Uri.parse('http://10.0.2.2:5000/Login?Username=$username&Password=$Password'));
      if (response.statusCode==200)
      {
        final data=json.decode(response.body);
        final prefs = await SharedPreferences.getInstance();
        if (data['Login']=='true')
        setState(() {
            prefs.setBool('isLoggedIn',true);
            
        });

        else{
          
        }
      }
      
    }
    catch(e){
      print(e);
    }
    showDialog(
            context: context,
            builder: (ctx) => AlertDialog(
              title: const Text("Logging In"),
              content: isLoggedIn?Text("Username: $username"):
              Container(
                height: 200,
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LoadingAnimationWidget.threeArchedCircle(
                      color: Color.fromARGB(255, 215, 219, 218),
                      size:50
                    )
                  ],
                )
              ),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(ctx).pop();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      
                    ),
                    color: Color.fromARGB(255, 215, 219, 218),
                    padding: const EdgeInsets.all(14),
                    child: const Text("Proceed",),
                  ),
                ),
              ],
            ),
          );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
        
          primarySwatch: Colors.blue,
        ),
      home: Scaffold(
        // appBar: AppBar(
        //   // title: Text("Login",style:TextStyle(color:Colors.white)),
        //   // backgroundColor: Color.fromARGB(255, 215, 219, 218),
        // ),
        body: Center(
          
          child:Container(
          height: MediaQuery.sizeOf(context).height/1.28,
          width: MediaQuery.sizeOf(context).width/1.3,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Color.fromARGB(255, 215, 219, 218),
            ),
            margin:EdgeInsets.only(bottom: 20,top:40),
            padding: EdgeInsets.only(bottom: 30),
            
           
            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 10,),
                    Image(image: AssetImage("assets/logo.png",),height: 180 ,),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  // decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.white))),
                  child:Text("Login",
                    style:GoogleFonts.poppins(
                      color:Colors.black,
                      fontSize:35,
                    )

                  )
                ),
                SizedBox(height: 40,child: Container(
                  decoration: BoxDecoration(border: Border(top: BorderSide(color: const Color.fromRGBO(245, 245, 245, 1)))),
                ),),
                Container(
                  padding: EdgeInsets.only(right:20,left:15),
                  child: TextField(
                      onChanged: (value) => {
                      setState(() {
                        username=value;
                      },)
                    },
                    selectionHeightStyle: BoxHeightStyle.max,
                    decoration: InputDecoration(
                      hintText: "Username",
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
                    ElevatedButton(onPressed: _setLogin,
                     child: Container(
                      height: 40,
                      width:90,
                      child: Center(child:Text("Login",style:GoogleFonts.poppins(letterSpacing: 2, fontWeight: FontWeight.w600, fontSize: 15, color:Colors.black))),
                    )),
                    ElevatedButton(
                      onPressed: (){
                        print("SignUp");
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpPage()));
                    }, 
                    child: Container(
                      height: 40,
                      width:90,
                      child: Center(child:Text("Sign Up",style:GoogleFonts.poppins(letterSpacing: 2, fontWeight: FontWeight.w600, fontSize: 14, color:Colors.black))),
                    ))
                  ],
                )
              ],
            ),
          )
        ),
      ),

    );
  }
}