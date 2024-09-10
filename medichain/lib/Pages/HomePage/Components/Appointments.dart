// import 'dart:html';

import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medichain/main.dart';

class Appointments extends StatefulWidget {
  const Appointments({super.key});

  @override
  State<Appointments> createState() => _AppointmentsState();
}

class _AppointmentsState extends State<Appointments> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        AppointmentCard(id:'1'),
        AppointmentCard(id:'2'),
        AppointmentCard(id:'3'),
      ]),
    );
  }
}

class AppointmentCard extends StatefulWidget {
  String id;
  AppointmentCard({Key? key, required this.id}) : super(key: key);

  @override
  State<AppointmentCard> createState() => _AppointmentCardState();
}

class _AppointmentCardState extends State<AppointmentCard> {
 
 
  @override
  AppointmentDetails? details;
  Widget build(BuildContext context) {
  // print(appointmentsMap['0']);
    details = appointmentsMap[widget.id];
    String? Day = DayMap[details?.appointmentTime.weekday];
    String? Month= MonthMap[details?.appointmentTime.month];
    int? Date= details?.appointmentTime.day;
    int? SHour = details?.appointmentTime.hour; 
    int? SMinutes = details?.appointmentTime.minute; 
    int? EMinutes = details?.appointmentTime.add(Duration(minutes: details!.Duration)).minute; 
    int? EHour = details?.appointmentTime.add(Duration(minutes: details!.Duration)).hour; 
    

    return Container(
      height: 190,
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color:Color.fromARGB(255, 255, 255, 255),
        border: Border(left: BorderSide(color: Colors.green,width: 5))
      ),
      margin: EdgeInsets.only(bottom: 20,left:10,right:10),
      padding: EdgeInsets.only(left:20,top:9),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Appointment Date",
                style: GoogleFonts.sairaCondensed(
                  fontSize:13,
                )
              ),
              PopupMenuButton<String>(
                color: Colors.white,
                icon: Icon(Icons.more_vert),
                onSelected: (String value) {
                  print(value);
                },
                itemBuilder: (BuildContext context) {
                  return [
                    PopupMenuItem<String>(
                      value: 'Cancel Appointment ${widget.id}',
                      child: GestureDetector(
                        onTap: () {
                          log("Cancel Appointment ${widget.id}");
                          Navigator.pop(context);
                        },
                        child: Text('Cancel Appointment',
                          style:GoogleFonts.poppins(
                            color: Theme.of(context).colorScheme.inverseSurface,
                            letterSpacing: -0.9,
                            fontWeight: FontWeight.bold
                        
                          )
                        ),
                      ),
                    ),
                  ];
                },
                )

            ],
          ),
          const SizedBox(
            height: 0,
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 10),
            decoration:const BoxDecoration(
              
              border: Border(
                bottom: BorderSide(color: Colors.grey,width:0.5)
              )
            ),
            child: Row(
              children: [
                Text("$Day $Month $Date "),
                const SizedBox(width: 10,),
                const Icon(Icons.circle,size:10),
                const SizedBox(width: 10,),
                Text("${SHour.toString().padLeft(2,'0')}:${SMinutes.toString().padLeft(2,'0')}-${EHour.toString().padLeft(2,'0')}:${EMinutes.toString().padLeft(2,'0')}"),
                
              ],
            ),
          ),
        const SizedBox(height: 20,),

        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage(details!.imagePath)
              ),
              SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(details!.doctorName,style:TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 15
                  )),
                  Text(details!.doctorType),
                ],
              )
          ],

        )

        ],
      ),
    );
  }
}
var appointmentsMap = {
  '1': appointments[0],
  '2': appointments[1],
  '3': appointments[2],
  '4': appointments[3],
  '5': appointments[4],
};

var DayMap={
  7:'Sun',
  1:'Mon',
  2:'Tue',
  3:'Wed',
  4:'Thu',
  5:'Fri',
  6:'Sat'
};

var MonthMap={
  1:'Jan',
  2:'Feb',
  3:'Mar',
  4:'Apr',
  5:'May',
  6:'Jun',
  7:'Jul',
  8:'Aug',
  9:'Sep',
  10:'Oct',
  11:'Nov',
  12:'Dec',
};

class AppointmentDetails{
  String id = '-1';
  String patientName= "John Doe";
  String doctorName = "Dr. Sean Murphy";
  String doctorType = "Physician" ;
  DateTime appointmentTime = DateTime(2024, 9, 15, 17, 30, 00);
  String hospitalName = "Apollo Hospitals";
  String hospitalLocation = "";
  String imagePath="";
  int Duration = 15;
  AppointmentDetails(
  this.id,
  this.patientName,
  this.doctorName,
  this.doctorType,
  this.appointmentTime,
  this.hospitalName,
  this.hospitalLocation, 
  this.imagePath, 
  this.Duration
  );

}

List<AppointmentDetails> appointments = [
  // Initialization 1
  AppointmentDetails(
    '001',                 // id
    'John Doe',            // patientName (common)
    'Dr. Emily Carter',    // doctorName
    'Cardiologist',        // doctorType
    DateTime(2024, 10, 5, 9, 30, 00),  // appointmentTime
    'City Medical Center', // hospitalName
    'Downtown',
    'assets/Profiles/Doctor_2.png',  // hospitalLocation
    30
  ),

  // Initialization 2
  AppointmentDetails(
    '002',                 
    'John Doe',            // patientName (common)
    'Dr. James Anderson',  
    'Dermatologist',       
    DateTime(2024, 11, 12, 14, 00, 00), 
    'Riverside Hospital',  
    'West End',
    'assets/Profiles/Doctor_1.png',  // hospitalLocation
    30   
  ),

  // Initialization 3
  AppointmentDetails(
    '003',                 
    'John Doe',            // patientName (common)
    'Dr. Olivia Bennett',  
    'Pediatrician',        
    DateTime(2024, 12, 20, 16, 15, 00), 
    'Sunshine Children\'s Hospital',  
    'East Side',
    'assets/Profiles/Doctor_2.png',  // hospitalLocation
    30
  ),

  // Initialization 4
  AppointmentDetails(
    '004',                 
    'John Doe',            // patientName (common)
    'Dr. William Foster',  
    'Orthopedic Surgeon',  
    DateTime(2024, 9, 30, 11, 45, 00), 
    'Central Orthopedic Clinic',  
    'Main Street',
    'assets/Profiles/Doctor_3.png',  // hospitalLocation
    30
  ),

  // Initialization 5
  AppointmentDetails(
    '005',                 
    'John Doe',            // patientName (common)
    'Dr. Ethan Roberts',   
    'Neurologist',         
    DateTime(2024, 11, 18, 13, 30, 00), 
    'Green Valley Hospital',  
    'North Avenue',
    'assets/Profiles/Doctor.png'     ,  // hospitalLocation
    30    
  ),
];
