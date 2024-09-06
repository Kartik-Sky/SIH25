import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  PersonDetails details;
  ProfilePage({Key? key, required this.details}):super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(top:10,bottom:40,left:15,right:30 ),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
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
            const SizedBox(height: 20,),
            
            Row(
              children: [
                
              ],
            )
          ],
        )
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
  String allergies;
  String medicalHistory;

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
