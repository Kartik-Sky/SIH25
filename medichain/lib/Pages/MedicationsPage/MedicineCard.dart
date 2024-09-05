
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MedicineCard extends StatefulWidget {
  MedicationDetails details;
  MedicineCard({Key? key, required this.details}):super(key: key);

  @override
  State<MedicineCard> createState() => _MedicineCardState();
}

class _MedicineCardState extends State<MedicineCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 0,
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(255, 196, 255, 211),

      ),
      child: Row(
        children: [
          SizedBox(width: 10,),
          CircleAvatar(
            backgroundImage: AssetImage(Medicine_to_image[widget.details.medicationType]??'assets/Medicines/Syrup.jpg'),
            radius: 32,
          ),

          SizedBox(width: 20,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.details.name,
                style:GoogleFonts.sairaSemiCondensed(
                  fontSize:15,
                  letterSpacing: -0.4,
                  fontWeight: FontWeight.w600
                ),
              ),
              Text(
                "${widget.details.brand} | ${widget.details.dosage}",
                style:GoogleFonts.saira(
                  fontSize:12
                )
              ),
              Text(
                widget.details.usageInstructions,
                style:GoogleFonts.saira(
                  fontSize:10
                )
              )
            ],
          )
        ],
      ),
    );
  }
}

class MedicationDetails {
  String id = '-1';
  String name = "Paracetamol"; // Name of the medication
  String brand = "Tylenol"; // Brand name of the medication
  String dosage = "500mg"; // Dosage strength of the medication
  String medicationType = "Tablet"; // Type of medication (Pill, Tablet, Syrup, Injection, etc.)
  String description = ""; // Description or purpose of the medication
  List<String> ingredients = []; // Active ingredients in the medication
  DateTime startDate;
  Duration duration;
  List<String> sideEffects = []; // Possible side effects
  List<String> contraindications = []; // Situations where the medication should not be used
  String usageInstructions = ""; // Instructions for usage
  bool isPrescriptionRequired = true; // Whether the medication requires a prescription
  double cost = 0.0; // Cost of the medication
  String doctorID;
  String doctorName;
  MedicationDetails({
    this.id = '-1',
    this.name = "Paracetamol",
    this.brand = "Tylenol",
    this.dosage = "500mg",
    this.medicationType = "Tablet",
    this.description = "",
    this.ingredients = const [],
    this.sideEffects = const [],
    this.contraindications = const [],
    this.usageInstructions = "",
    this.isPrescriptionRequired = true,
    this.cost = 0.0,
    required this.startDate,
    required this.duration,
    this.doctorID = '-1',
    this.doctorName ='Sean Murphy',
  });
}

var Medicine_to_image = {
  "Pills" : "assets/Medicines/Pills.jpg",
  "Syringe" : "assets/Medicines/Syringe.jpg",
  "Syrup" : "assets/Medicines/Syrup.jpg",
  "Tablet" : "assets/Medicines/Tablet.jpg"
};