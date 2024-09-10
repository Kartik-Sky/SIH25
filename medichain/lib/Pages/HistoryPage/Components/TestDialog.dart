import 'dart:developer';
// import 'package:permission_handler/permission_handler.dart';

// import 'package:open_file/open_file.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_file_downloader/flutter_file_downloader.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medichain/Pages/HistoryPage/Components/PrescriptionCard.dart';
import 'package:medichain/Pages/HistoryPage/Components/Prescriptions.dart';
import 'package:medichain/Pages/HistoryPage/Components/TestsCard.dart';
import 'package:medichain/Pages/HomePage/Components/Appointments.dart';
// import 'package:flutter_media_downloader/flutter_media_downloader.dart';

class TestDialog extends StatefulWidget {
  TestDetails details;
  TestDialog({Key? key , required this.details}) : super(key:key);

  @override
  State<TestDialog> createState() => _TestDialogState();

}

class _TestDialogState extends State<TestDialog> {
  // final _flutterMediaDownloaderPlugin = MediaDownload();
  double? _progress;
  @override
  Widget build(BuildContext context) {
  log(widget.details.Values.toString());

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
                        Container(
                          width: 170,
                          child: Text(widget.details.hospitalName, style:GoogleFonts.poppins(
                            fontSize:16,
                            letterSpacing: -.4,
                            fontWeight: FontWeight.w700
                          )),
                        ),
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
                            Text("${DayMap[widget.details.testTime.weekday]} ${MonthMap[widget.details.testTime.month]} ${widget.details.testTime.day}, ${widget.details.testTime.year} ",
                              style: GoogleFonts.poppins(
                                  fontSize:11,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: -.2
                                ),
                              ),
                            Text("${widget.details.testTime.hour.toString().padLeft(2,'0')}:${widget.details.testTime.minute.toString().padLeft(2,'0')}",
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
                const SizedBox(height: 40,),

                (widget.details.testResult=='Completed') ? SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                    columns: const [
                      DataColumn(label: Text('Test', style: TextStyle(fontWeight: FontWeight.bold))),
                      DataColumn(label: Text('Value', style: TextStyle(fontWeight: FontWeight.bold))),
                      DataColumn(label: Text('Unit', style: TextStyle(fontWeight: FontWeight.bold))),
                      DataColumn(label: Text('Reference', style: TextStyle(fontWeight: FontWeight.bold))),
                    ],

                    rows: widget.details.Values.map((data) {
                      return DataRow(
                        cells: [
                          DataCell(Text(data[0].toString())), // Test
                          DataCell(Text(data[1].toString())), // Value
                          DataCell(Text(data[2].toString())), // Unit
                          DataCell(Text(data[3].toString())), // Reference
                        ],
                      );
                    }).toList(),

                    
                  ),
                ):Container(
                  child: Text("Test Result not available yet! "),
                ),


                SizedBox(height: 40,),
                (widget.details.testResult=='Completed') ?Center(
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
                ):Container(),

              
              ],
            ),
          ),
        ),
      );
  }
}