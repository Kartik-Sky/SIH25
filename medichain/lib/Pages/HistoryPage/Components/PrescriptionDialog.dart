import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medichain/Pages/HistoryPage/Components/PrescriptionCard.dart';

class PrescriptionDialog extends StatefulWidget {
  PrescriptionDetails details;
  PrescriptionDialog({Key? key , required this.details}) : super(key:key);

  @override
  State<PrescriptionDialog> createState() => _PrescriptionDialogState();

}

class _PrescriptionDialogState extends State<PrescriptionDialog> {
  @override
  Widget build(BuildContext context) {
    return 
      SingleChildScrollView(
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
              onPressed: () { log('Closed'); },
              child: Icon(Icons.close),
            ),
          body: Container(
            // height: MediaQuery.sizeOf(context).height/1.1,
            // width: MediaQuery.sizeOf(context).width/1.1,
            padding: EdgeInsets.only(top:20,left:20,right:20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/Dialogs/Prescription/Apollo_Hospitals_Logo.png',height: 50,width: 60,),
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.details.hospitalName, style:GoogleFonts.poppins(
                          fontSize:16,
                          letterSpacing: -.4,
                          fontWeight: FontWeight.w700
                        )),
                        Text(widget.details.hospitalLocation, style:GoogleFonts.poppins(
                          fontSize:13,
                          letterSpacing: .4,
                          fontWeight: FontWeight.w500
                        )),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
   
    );
  }
}