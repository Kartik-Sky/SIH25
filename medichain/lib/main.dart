import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medichain/LoginPage.dart';
import 'dart:math' as math;
import 'package:medichain/Pages/EmergencyPage/EmergencyPage.dart';
import 'package:medichain/Pages/HistoryPage/HistoryPage.dart';
import 'package:medichain/Pages/HomePage/HomePage.dart';
import 'package:medichain/Pages/MedicationsPage/Medications.dart';
import 'package:medichain/Pages/ProfilePage/ProfilePage.dart';

Color primaryColor = const Color.fromARGB(255, 115, 203, 118);
void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 118, 209, 121)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Medichain'),
      // home:LoginPage()
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  double BottomIconSize = 30;
  int _current_value=4;

  @override
  Widget build(BuildContext context) {
    final _PageController = PageController(initialPage: _current_value);
    String _emergencyPageType ="Ambulance";
    String name= "Kartik Goyal";
    String profile_picture_link = 'assets/profile_picture.jpeg';
    return Scaffold(
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        actions: [
          IconButton(icon: Icon(Icons.settings),
          onPressed: () {
            log("Settins");
          },
          )
        ],
        title: Container(
          padding: EdgeInsets.only(bottom: (_current_value==4)?5:0),
          decoration: BoxDecoration(
            // border:(_current_value==4)?Border(bottom: BorderSide(color: Colors.grey,width: 1)):Border()
          ),
          child: Row(
            children: [
              (_current_value!=4)?CircleAvatar(
                radius: 25,
                backgroundImage:AssetImage(profile_picture_link,),
              ): Container(
                margin: EdgeInsets.only(top:5,),
                child: Text("Profile Page",
                style:GoogleFonts.poppins(
                  fontSize:25,
                  fontWeight: FontWeight.w600,
                )
                )
              ),
              SizedBox(width: 20,),
              (_current_value!=4)?Text(name, style:GoogleFonts.sofiaSansExtraCondensed(
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                      
                    )):Container(),
            ],
          ),
        ),
          
          ),
      
      floatingActionButton: FloatingActionButton(
        
        onPressed: ()=>{
          log("Health"),
          _PageController.jumpToPage(2),
          setState(() {
            _current_value=2;
          })
        },
        isExtended: true,
        child:
        Transform(
          origin: Offset(14,15),
          transform: Matrix4.rotationZ((_current_value==2)?math.pi/4:0),
          child: Icon(Icons.add,size: 30,)
          ),
        shape: CircleBorder()
        

      ),
      bottomNavigationBar: BottomAppBar(
        height: 75,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Container(
                margin: EdgeInsets.all(5),
                child:Icon(
                (_current_value==0)?Icons.home:Icons.home_outlined, 
                size: BottomIconSize)),
                onPressed: () => {
                  _PageController.jumpToPage(0),
                  log('0'), 
                  setState (() =>  _current_value=0),
                  
                },),
            IconButton(
              icon: Container(
                margin: EdgeInsets.all(5),
                child:Icon(
                  (_current_value==1)?Icons.view_list_outlined:Icons.list_alt, 
                size: BottomIconSize)),
                onPressed: () => {
                  _PageController.jumpToPage(1),
                  log('1'), 
                  setState (() =>  _current_value=1),
                  
                },),
            
            IconButton(
              icon: Container(
                margin: EdgeInsets.all(5),
                child:Icon(
                  
                  (_current_value==3)?Icons.medication_sharp:Icons.medication_outlined, 
                size: BottomIconSize)),
                onPressed: () => {
                  _PageController.jumpToPage(3),
                  log('3'), 
                  setState (() =>  _current_value=3),
                  
                },),
            IconButton(
              icon: Container(
                margin: EdgeInsets.all(5),
                child:Icon(Icons.person, 
                size: BottomIconSize)),
                onPressed: () => {
                  _PageController.jumpToPage(4),
                  log('4'), 
                  setState (() =>  _current_value=4),
                  
                },)
          ],
        ),),
      
      body: PageView(
        controller: _PageController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          const HomePage(),
          const HistoryPage(),
          EmergencyPage(pageType: _emergencyPageType,),
          const MedicationsPage(),
          ProfilePage(details:person)
        ],
      )
      
    );
  }
}

PersonDetails person = PersonDetails(
    id: "1234 1234 1234",
    firstName: "Kartik",
    lastName: "Goyal",
    dateOfBirth: DateTime(2005, 2, 18),
    gender: "Male",
    phoneNumber: "+91 94271 39950",
    email: "kaartik05@gmail.com",
    address: ["B-103","Ishan Heights","Off New C.G. Road","Chandkheda","Ahmedabad","Gujarat","382424"],
    emergencyContactName: "Mukesh Goyal",
    emergencyContactNumber: "+91 98980 45811",
    bloodGroup: "O+",
    allergies: ["Penicillin", "Peanuts", "Amosentoproxyl"],
    medicalHistory: ["Vitamin D Deficiency", "Low Immunity"]
  );
