import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medichain/Pages/HistoryPage/Components/TestsCard.dart';
import 'package:medichain/Pages/HomePage/Components/Appointments.dart';

class PrescriptionCard extends StatefulWidget {
  PrescriptionDetails details;
  PrescriptionCard({Key? key, required this.details}) : super(key: key);

  @override
  State<PrescriptionCard> createState() => _PrescriptionCardState();
}

class _PrescriptionCardState extends State<PrescriptionCard> {
  @override
  Widget build(BuildContext context) {
    log(widget.details.imagePath);
    return Container(
      
      decoration: BoxDecoration(
        color:Color.fromARGB(255, 245, 245, 245),
        borderRadius: BorderRadius.circular(20),
        border: Border(left: BorderSide(color: Colors.blue,width: 5),
        )
      ),
      width: MediaQuery.sizeOf(context).width,
      margin: EdgeInsets.only(left: 25,right: 25,bottom:20),
      padding: EdgeInsets.only(left:10,top:10),
      // height: 180,
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
                Text("${DayMap[widget.details.prescriptionDate.weekday]} ${MonthMap[widget.details.prescriptionDate.month]} ${widget.details.prescriptionDate.day}, ${widget.details.prescriptionDate.year} ",
                style: GoogleFonts.poppins(
                    fontSize:11,
                    letterSpacing: 0,
                  ),
                ),
                const SizedBox(width: 10,),
                const Icon(Icons.circle,size:7,),
                const SizedBox(width: 10,),
                Text("${widget.details.prescriptionDate.hour.toString().padLeft(2,'0')}:${widget.details.prescriptionDate.minute.toString().padLeft(2,'0')}",
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
              SizedBox(width: 10,),
              CircleAvatar(
              radius: 35,
              backgroundColor: Colors.green,
              backgroundImage: AssetImage(
                widget.details.imagePath
              )
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
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Primary Complaint ",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      letterSpacing: -0.2,
                      wordSpacing: 1,
                      fontWeight: FontWeight.bold
                    ),
                    
                  ),
                  Container(
                    width: 150,
                    // height: 20,
                    
                    child: Text(
                      "${widget.details.primaryComplain} ",
                      style: GoogleFonts.poppins(
                        fontSize: 10
                      ),
                    ),
                  ),
                ],
              )
            ],
          ), 
          const SizedBox(
            height: 3,
          ),


        ],
      ),
    );;
  }
}

class PrescriptionDetails {
  String id = '-1';
  String patientName = "John Doe";
  String doctorName = "Dr. Sean Murphy";
  String doctorType = "Physician";
  DateTime prescriptionDate = DateTime(2024, 9, 15);
  DateTime followupDate = DateTime(2024, 9, 16);
  String hospitalName = "Apollo Hospitals";
  String hospitalLocation = "";
  List<String> tests=[];
  List<String> medicationNames = []; 
  List<String> dosages = []; 
  List<String> instructions = []; 
  
  String diagnosis = ""; 
  String prescriptionNotes = "";
  
  double cost = 0.0;
  List<String> comments = [];
  
  String imagePath;
  String primaryComplain;

  PrescriptionDetails({
    this.id = '-1',
    this.patientName = "John Doe",
    this.doctorName = "Dr. Sean Murphy",
    this.doctorType = "Physician",
    required this.prescriptionDate,
    this.hospitalName = "Apollo Hospitals",
    this.hospitalLocation = "",
    this.medicationNames = const [],
    this.dosages = const [],
    this.instructions = const [],
    this.diagnosis = "",
    this.prescriptionNotes = "",
    this.cost = 0.0,
    this.comments = const [],
    this.tests=const[],
    required this.followupDate,
    this.imagePath = "assets/Profiles/Doctor_1.png",
    required this.primaryComplain
  });
}
