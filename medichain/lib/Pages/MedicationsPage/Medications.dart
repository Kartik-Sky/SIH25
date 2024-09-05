import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medichain/Pages/MedicationsPage/Medicines.dart';

class MedicationsPage extends StatefulWidget {
  const MedicationsPage({super.key});

  @override
  State<MedicationsPage> createState() => _MedicationsPageState();
}

class _MedicationsPageState extends State<MedicationsPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.only(left: 10,right:10,top:10,bottom:100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Your Medications",
                
                style:GoogleFonts.robotoCondensed(
                    fontSize: 35,
                )
              ),
            ),
      
            Container(
              child: Medicines(),
            )
      
          ],
        ),
      ),
    );
  }
}