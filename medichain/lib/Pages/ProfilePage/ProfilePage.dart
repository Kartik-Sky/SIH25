import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medichain/Pages/HomePage/Components/Appointments.dart';

class ProfilePage extends StatefulWidget {
  PersonDetails details;
  ProfilePage({Key? key, required this.details}):super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(top:BorderSide(color: Colors.grey))
        ),
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top:10,bottom:40,left:15,right:30 ),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/profile_picture.jpeg'),
                    radius: 50,
                  ),
                  SizedBox(width: 40,),
                  Column(
                    children: [
                      
                      Text(
                        "${widget.details.firstName} ${widget.details.lastName}",
                        style:GoogleFonts.ptSerif(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        )
                      ),
                      Text(
                        "${widget.details.id}",
                        style:GoogleFonts.robotoCondensed(
                          fontSize: 12
                        )
                      ),
      
                    ],
                  )
                ],
              ),
              const SizedBox(height: 100,),
              
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  
                  children: [                
                  Container(
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.blueGrey,width: 0.8),top:BorderSide(color: Colors.blueGrey,width: 0.8))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      
                      children: [
                        
                        Container(
                          height: 50,
                          width: MediaQuery.sizeOf(context).width/2,
                          alignment: Alignment.center,
                          // color: Colors.green,
                          child: Text("Date Of Birth: ",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              letterSpacing: -.2
                            ),
                          ),
                        ),
                        Container(
                          // height: 50,
                          alignment: Alignment.center,
                          width: MediaQuery.sizeOf(context).width/2.7,
                          // color: Colors.green,
                          child: Text("${widget.details.dateOfBirth.day.toString().padLeft(2,'0')}-${MonthMap[widget.details.dateOfBirth.month]}-${widget.details.dateOfBirth.year}",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              letterSpacing: -.2
                            ),
                    
                          ),
                        ),
                    
                      ],
                    ),
                  ),
      
                  Container(
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.blueGrey,width: 0.8))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      
                      children: [
                        
                        Container(
                          height: 50,
                          width: MediaQuery.sizeOf(context).width/2,
                          alignment: Alignment.center,
                          // color: Colors.green,
                          child: Text("Phone Number: ",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              letterSpacing: -.2
                            ),
                          ),
                        ),
                        Container(
                          // height: 50,
                          alignment: Alignment.centerLeft,
                          width: MediaQuery.sizeOf(context).width/2.7,
                          // color: Colors.green,
                          child: Text("${widget.details.phoneNumber}",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              letterSpacing: -.2
                            ),
                    
                          ),
                        ),
                    
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.blueGrey,width: 0.8))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      
                      children: [
                        
                        Container(
                          height: 50,
                          width: MediaQuery.sizeOf(context).width/2,
                          alignment: Alignment.center,
                          // color: Colors.green,
                          child: Text("Gender: ",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              letterSpacing: -.2
                            ),
                          ),
                        ),
                        Container(
                          // height: 50,
                          alignment: Alignment.center,
                          width: MediaQuery.sizeOf(context).width/2.7,
                          // color: Colors.green,
                          child: Text("${widget.details.gender}",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              letterSpacing: -.2
                            ),
                    
                          ),
                        ),
                    
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.blueGrey,width: 0.8))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      
                      children: [
                        
                        Container(
                          height: 50,
                          width: MediaQuery.sizeOf(context).width/2,
                          alignment: Alignment.center,
                          // color: Colors.green,
                          child: Text("E mail: ",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              letterSpacing: -.2
                            ),
                          ),
                        ),
                        Container(
                          // height: 50,
                          alignment: Alignment.centerLeft,
                          width: MediaQuery.sizeOf(context).width/2.7,
                          // color: Colors.green,
                          child: Text("${widget.details.email}",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              letterSpacing: -.2,
                              fontSize: 12
                            ),
                    
                          ),
                        ),
                    
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.blueGrey,width: 0.8))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      
                      children: [
                        
                        Container(
                          height: 50,
                          width: MediaQuery.sizeOf(context).width/2,
                          alignment: Alignment.center,
                          // color: Colors.green,
                          child: Text("Address: ",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              letterSpacing: -.2
                            ),
                          ),
                        ),
                        Container(
                          // height: 50,
                          alignment: Alignment.centerLeft,
                          width: MediaQuery.sizeOf(context).width/2.7,
                          // color: Colors.green,
                          child: Text("${widget.details.address.join(', \n')}",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              letterSpacing: -.2
                            ),
                    
                          ),
                        ),
                    
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.blueGrey,width: 0.8))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      
                      children: [
                        
                        Container(
                          height: 50,
                          width: MediaQuery.sizeOf(context).width/2,
                          alignment: Alignment.center,
                          // color: Colors.green,
                          child: Text("Emergency Contact Name: ",
                          textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              letterSpacing: -.2
                            ),
                          ),
                        ),
                        Container(
                          // height: 50,
                          alignment: Alignment.center,
                          width: MediaQuery.sizeOf(context).width/2.7,
                          // color: Colors.green,
                          child: Text("${widget.details.emergencyContactName}",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              letterSpacing: -.2
                            ),
                    
                          ),
                        ),
                    
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.blueGrey,width: 0.8))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      
                      children: [
                        
                        Container(
                          height: 50,
                          width: MediaQuery.sizeOf(context).width/2,
                          alignment: Alignment.center,
                          // color: Colors.green,
                          child: Text("Emergency Contact Number: ",
                          textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              letterSpacing: -.2
                            ),
                          ),
                        ),
                        Container(
                          // height: 50,
                          alignment: Alignment.center,
                          width: MediaQuery.sizeOf(context).width/2.7,
                          // color: Colors.green,
                          child: Text("${widget.details.emergencyContactNumber}",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              letterSpacing: -.2
                            ),
                    
                          ),
                        ),
                    
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.blueGrey,width: 0.8))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      
                      children: [
                        
                        Container(
                          height: 50,
                          width: MediaQuery.sizeOf(context).width/2,
                          alignment: Alignment.center,
                          // color: Colors.green,
                          child: Text("Blood Group: ",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              letterSpacing: -.2
                            ),
                          ),
                        ),
                        Container(
                          // height: 50,
                          alignment: Alignment.center,
                          width: MediaQuery.sizeOf(context).width/2.7,
                          // color: Colors.green,
                          child: Text("${widget.details.bloodGroup}ve",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              letterSpacing: -.2
                            ),
                    
                          ),
                        ),
                    
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.blueGrey,width: 0.8))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      
                      children: [
                        
                        Container(
                          height: 50,
                          width: MediaQuery.sizeOf(context).width/2,
                          alignment: Alignment.center,
                          // color: Colors.green,
                          child: Text("Allergies: ",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              letterSpacing: -.2
                            ),
                          ),
                        ),
                        Container(
                          // height: 50,
                          alignment: Alignment.centerLeft,
                          width: MediaQuery.sizeOf(context).width/2.7,
                          // color: Colors.green,
                          child: Text("${widget.details.allergies.join(', ')}",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              letterSpacing: -.2
                            ),
                    
                          ),
                        ),
                    
                      ],
                    ),
                  ),
                  
                  Container(
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.blueGrey,width: 0.8),top:BorderSide(color: Colors.blueGrey,width: 0.8))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      
                      children: [
                        
                        Container(
                          height: 50,
                          width: MediaQuery.sizeOf(context).width/2,
                          alignment: Alignment.center,
                          // color: Colors.green,
                          child: Text("Medical History: ",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              letterSpacing: -.2
                            ),
                          ),
                        ),
                        Container(
                          // height: 50,
                          alignment: Alignment.centerLeft,
                          width: MediaQuery.sizeOf(context).width/2.7,
                          // color: Colors.green,
                          child: Text("${widget.details.medicalHistory.join(', \n')}",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              letterSpacing: -.2
                            ),
                    
                          ),
                        ),
                    
                      ],
                    ),
                  ),
      
                  ],
                ),
              ),
              SizedBox(height: 50,),
              
            ],
          )
        ),
      ),
    )
    ;
  }
}

class PersonDetails {
  String id;
  String firstName;
  String lastName;
  DateTime dateOfBirth;
  String gender;
  String phoneNumber;
  String email;
  List<String> address;
  String emergencyContactName;
  String emergencyContactNumber;
  String bloodGroup;
  List<String> allergies;
  List<String> medicalHistory;

  PersonDetails({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.dateOfBirth,
    required this.gender,
    required this.phoneNumber,
    required this.email,
    required this.address,
    required this.emergencyContactName,
    required this.emergencyContactNumber,
    required this.bloodGroup,
    required this.allergies,
    required this.medicalHistory,
  });
}
