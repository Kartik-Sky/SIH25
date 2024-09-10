import 'dart:developer';
// import 'package:permission_handler/permission_handler.dart';

// import 'package:open_file/open_file.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_file_downloader/flutter_file_downloader.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medichain/Pages/HistoryPage/Components/PrescriptionCard.dart';
import 'package:medichain/Pages/HistoryPage/Components/Prescriptions.dart';
import 'package:medichain/Pages/HomePage/Components/Appointments.dart';
// import 'package:flutter_media_downloader/flutter_media_downloader.dart';

class PrescriptionDialog extends StatefulWidget {
  PrescriptionDetails details;
  PrescriptionDialog({Key? key , required this.details}) : super(key:key);

  @override
  State<PrescriptionDialog> createState() => _PrescriptionDialogState();

}

class _PrescriptionDialogState extends State<PrescriptionDialog> {
  // final _flutterMediaDownloaderPlugin = MediaDownload();
  double? _progress;
  @override
  Widget build(BuildContext context) {

    return 
      Container(
        
        height: MediaQuery.sizeOf(context).height/1.1,
        width: MediaQuery.sizeOf(context).width/1.1,
        child: Scaffold(
          floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
          floatingActionButton: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all()
            ),
            child: GestureDetector(
              onTap:() {
                Navigator.of(context).pop();
              },
              child: const Icon(Icons.close,size:20))
            ),
          body: Container(
            padding: EdgeInsets.only(top:20,left:10,right:10),
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
                ),

                const SizedBox(height: 40,),
                
                Container(
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.blueGrey,width: 0.8),top:BorderSide(color: Colors.blueGrey,width: 0.8))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    
                    children: [
                      Container(
                        height: 50,
                        width: MediaQuery.sizeOf(context).width/2.8,
                        alignment: Alignment.center,
                        // color: Colors.green,
                        child: Text("Patient Name: ",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            letterSpacing: -.2
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        alignment: Alignment.center,
                        width: MediaQuery.sizeOf(context).width/2.7,
                        // color: Colors.green,
                        child: Text("${widget.details.patientName}",
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    
                    children: [
                      Container(
                        height: 50,
                        width: MediaQuery.sizeOf(context).width/2.8,
                        alignment: Alignment.center,
                        // color: Colors.green,
                        child: Text("Doctor Name: ",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            letterSpacing: -.2
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        alignment: Alignment.center,
                        width: MediaQuery.sizeOf(context).width/2.7,
                        // color: Colors.green,
                        child: Text("${widget.details.doctorName}",
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    
                    children: [
                      Container(
                        height: 50,
                        width: MediaQuery.sizeOf(context).width/2.8,
                        alignment: Alignment.center,
                        // color: Colors.green,
                        child: Text("Doctor Type: ",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            letterSpacing: -.2
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        alignment: Alignment.center,
                        width: MediaQuery.sizeOf(context).width/2.7,
                        // color: Colors.green,
                        child: Text("${widget.details.doctorType}",
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    
                    children: [
                      Container(
                        height: 50,
                        width: MediaQuery.sizeOf(context).width/2.8,
                        alignment: Alignment.center,
                        // color: Colors.green,
                        child: Text("Prescription Date: ",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            letterSpacing: -.2
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        alignment: Alignment.center,
                        width: MediaQuery.sizeOf(context).width/2.7,
                        // color: Colors.green,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("${DayMap[widget.details.prescriptionDate.weekday]} ${MonthMap[widget.details.prescriptionDate.month]} ${widget.details.prescriptionDate.day}, ${widget.details.prescriptionDate.year} ",
                              style: GoogleFonts.poppins(
                                  fontSize:11,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: -.2
                                ),
                              ),
                            Text("${widget.details.prescriptionDate.hour.toString().padLeft(2,'0')}:${widget.details.prescriptionDate.minute.toString().padLeft(2,'0')}",
                            style: GoogleFonts.poppins(
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -.2
                              ),
                            
                            ),
                          ],
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    
                    children: [
                      Container(
                        height: 50,
                        width: MediaQuery.sizeOf(context).width/2.8,
                        alignment: Alignment.center,
                        // color: Colors.green,
                        child: Text("Follow-Up Date: ",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            letterSpacing: -.2
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        alignment: Alignment.center,
                        width: MediaQuery.sizeOf(context).width/2.7,
                        // color: Colors.green,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("${DayMap[widget.details.followupDate.weekday]} ${MonthMap[widget.details.followupDate.month]} ${widget.details.followupDate.day}, ${widget.details.followupDate.year} ",
                              style: GoogleFonts.poppins(
                                  fontSize:11,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: -.2
                                ),
                              ),
                            Text("${widget.details.followupDate.hour.toString().padLeft(2,'0')}:${widget.details.followupDate.minute.toString().padLeft(2,'0')}",
                            style: GoogleFonts.poppins(
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -.2
                              ),
                            
                            ),
                          ],
                        ),
                      ),
                      
                    ],
                  ),
                ),
                
                SizedBox(height: 40,),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                    columns: [
                      DataColumn(label: Text("Medication")),
                      DataColumn(label: Text("Dosages")),
                      DataColumn(label: Text("Instructions")),
                    ],
                    rows: List.generate(
                      widget.details.medicationNames.length, 
                      (index) => DataRow(
                        cells: [
                          DataCell(Text(widget.details.medicationNames[index])),
                          DataCell(Text(widget.details.dosages[index])),
                          DataCell(Text(widget.details.instructions[index])),
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 40,),
                Center(
                  child: (_progress!=null)
                      ? CircularProgressIndicator(
                        color: const Color.fromARGB(255, 17, 157, 22),
                      )
                      : ElevatedButton(
                          onPressed: (){
                            log("Trigger Download");
                            FileDownloader.downloadFile(url: "https://vit.ac.in/files/Academic-Calendar-Winter-Semester-except-BSc-Agri-MBA-2024-25.pdf"
        
                            ,onProgress:(fileName, progress) => {
                              setState(() {
                                _progress=progress;log(progress.toString());
                              },),
                            },
                            onDownloadCompleted: ((path){
                              log("Path: $path");
                              setState(() {
                                _progress=null;
                              });
                            }
                            ));
                          },
                          child: Text("Download PDF"),
                        ),
                ),

              
              ],
            ),
          ),
        ),
      );
  }
}