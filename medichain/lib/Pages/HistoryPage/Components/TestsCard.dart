// import 'dart:html';

import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medichain/Pages/HistoryPage/Components/TestDialog.dart';
import 'package:medichain/Pages/HomePage/Components/Appointments.dart';

class TestDetails{
  String id = '-1';
  String patientName= "John Doe";
  String doctorName = "Dr. Sean Murphy";
  String doctorType = "Physician" ;
  DateTime testTime = DateTime(2024, 9, 15, 17, 30, 00);
  String hospitalName = "Apollo Hospitals";
  String hospitalLocation = "";
  List<String> filePaths=[];
  
  String testName = "Blood Test"; // Name of the test
  String testType = "Laboratory"; // Type of test (e.g., Imaging, Laboratory)
  String testResult = "Pending"; // Result status (e.g., Pending, Completed, etc.)

  String resultSummary = ""; // Short summary of the test result
  DateTime resultDate = DateTime(2024); // Date when the test result is available
  String testDescription = ""; // Description of the test
  List<String> testPreparations = []; // List of preparations required before the test
  List<List> Values;
  double cost = 0.0;
  List<String> comments = [];

  TestDetails({
    this.id = '-1',
    this.patientName = "John Doe",
    this.doctorName = "Dr. Sean Murphy",
    this.doctorType = "Physician",
    required this.testTime,
    this.hospitalName = "Apollo Hospitals",
    this.hospitalLocation = "",
    this.filePaths = const [],
    this.testName = "Blood Test",
    this.testType = "Laboratory",
    this.testResult = "Pending",
    this.resultSummary = "",
    required this.resultDate,
    this.testDescription = "",
    this.testPreparations = const [],
    this.cost = 0.0,
    this.comments = const [],
    required this.Values,
  });

}

class TestCard extends StatefulWidget {
  TestDetails details=TestDetails(testTime: DateTime(2024,9,7,17,30),resultDate: DateTime(2024,9,8,17,30),Values:[[]]);
  TestCard({Key? key, required this.details}) : super(key: key);

  @override
  State<TestCard> createState() => _TestCardState();
}

class _TestCardState extends State<TestCard> {
  @override
  Widget build(BuildContext context) {
    String status = widget.details.testResult;
    log(widget.details.testName);
    return GestureDetector(
      onTap:()=>{
        showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: "Dismiss",
      barrierColor: Colors.black54,
      transitionDuration: Duration(milliseconds: 300),
      pageBuilder: (context, animation1, animation2) {
        return Align(
          alignment: Alignment.center,
          child: Material(
            color: Colors.white,
            elevation: 2,
            borderRadius: BorderRadius.circular(20),
            child: TestDialog(details:widget.details)
          ),
        );
      },
      transitionBuilder: (context, anim1, anim2, child) {
        return ScaleTransition(
          scale: CurvedAnimation(parent: anim1, curve: Curves.easeOutBack),
          child: child,
        );
      },
      )
      },
      child: Container(
        
        decoration: BoxDecoration(
          color:Color.fromARGB(255, 245, 245, 245),
          borderRadius: BorderRadius.circular(20),
          border: Border(left: BorderSide(color: (status=="Pending")?Colors.red:Colors.green,width: 5),
          )
        ),
        width: MediaQuery.sizeOf(context).width,
        margin: EdgeInsets.only(left: 25,right: 25,bottom:20),
        padding: EdgeInsets.only(left:10,top:10),
        height: 180,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          
          children: [
            Container(
              
              child: Row(
                children: [
                  Text(
                    widget.details.hospitalName,
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      letterSpacing: -0.3,
                      fontWeight: FontWeight.w600
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Text(
                    widget.details.testName,
                    style: GoogleFonts.poppins(
                      fontSize:11,
                      letterSpacing: 0,
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    child: Icon(Icons.circle,size: 7)
                    ),
                  SizedBox(width: 10,),
                  Text("${DayMap[widget.details.testTime.weekday]} ${MonthMap[widget.details.testTime.month]} ${widget.details.testTime.day}, ${widget.details.testTime.year} ",
                  style: GoogleFonts.poppins(
                      fontSize:11,
                      letterSpacing: 0,
                    ),
                  ),
                  const SizedBox(width: 10,),
                  const Icon(Icons.circle,size:7,),
                  const SizedBox(width: 10,),
                  Text("${widget.details.testTime.hour.toString().padLeft(2,'0')}:${widget.details.testTime.minute.toString().padLeft(2,'0')}",
                    style: GoogleFonts.poppins(
                      fontSize:11,
                      letterSpacing: 0,
                    ),
                  ),
      
      
                  
      
                ],
              ),
              
            ),
            SizedBox(
                    child: Container(
                    width: MediaQuery.sizeOf(context).width,
                    margin: EdgeInsets.only(right: 15),
                    height: 18,
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.grey, width: 2)),
                    ),
                    
                  ),),
            SizedBox(
              height: 10,
            ),
      
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 14,top:8),
                  child: CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage(
                      test_To_Image_Map[widget.details.testName]??"assets/Tests/XRay.png"
                    ),
                  ),
                ),
                
                SizedBox(
                  width: MediaQuery.sizeOf(context).width/6,
                ),
            
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Doctor Name ",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        letterSpacing: -0.2,
                        wordSpacing: 1,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      "${widget.details.doctorName} ",
                      style: GoogleFonts.poppins(
                        fontSize: 10
                      ),
                    ),
                    
                  ],
                )
              ],
            ), 
            const SizedBox(
              height: 3,
            ),
      
            Container(
              alignment: Alignment.center,
              child:Text(
                widget.details.testResult,
                style: GoogleFonts.poppins(
                  color:Colors.white,
                  fontSize: 10,
                ),
              ),
              width: 100,
              margin: EdgeInsets.only(right: 10),
              padding: EdgeInsets.symmetric(horizontal:7,vertical: 3),
              decoration: BoxDecoration(
                color:(widget.details.testResult=="Completed")?Colors.green:Colors.red,
                borderRadius: BorderRadius.circular(20)
              ),
            )
      
          ],
        ),
      ),
    );
  }
}


var test_To_Image_Map ={

  'X-Ray':'assets/Tests/XRay.png',
  'MRI Scan':'assets/Tests/MRI.png',
  'OB GYN':'assets/Tests/obgyn.jpg',
  'Eye Test':'assets/Tests/EyeTest.jpg',
  'Blood Test':'assets/Tests/BloodTest.png',
  'Sonography':'assets/Tests/SonoGraphy.png',
  'CT Scan':'assets/Tests/CTScan.png',
  'Biopsy':'assets/Tests/Biopsy.jpg',
  'EKG':'assets/Tests/Graph.jpg',
  'ECG':'assets/Tests/Graph.jpg',
  'EMG':'assets/Tests/Graph.jpg',
  // 'OB GYN':'assets/Tests/obgyn.png',

  
};