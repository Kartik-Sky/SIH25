import 'package:flutter/cupertino.dart';
import 'package:medichain/Pages/MedicationsPage/MedicineCard.dart';

class Medicines extends StatefulWidget {
  const Medicines({super.key});

  @override
  State<Medicines> createState() => _MedicinesState();
}

class _MedicinesState extends State<Medicines> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MedicineCard(details: medications[0]),
        MedicineCard(details: medications[1]),
        MedicineCard(details: medications[2]),
        MedicineCard(details: medications[2]),
        MedicineCard(details: medications[3]),
        MedicineCard(details: medications[4]),
      ],
    );
  }
}

List<MedicationDetails> medications = [
  MedicationDetails(
    id: "001",
    name: "Paracetamol",
    brand: "Tylenol",
    dosage: "500mg",
    medicationType: "Tablet",
    description: "Used for pain relief and fever reduction.",
    ingredients: ["Paracetamol"],
    sideEffects: ["Nausea", "Rash"],
    contraindications: ["Liver disease"],
    usageInstructions: "Take one tablet every 6 hours as needed.",
    isPrescriptionRequired: false,
    cost: 5.0,
    startDate: DateTime(2024, 9, 5),
    duration: Duration(days: 5), // Changed to Duration
    doctorID: "D001",
    doctorName: "Dr. Smith"
  ),
  MedicationDetails(
    id: "002",
    name: "Ibuprofen",
    brand: "Advil",
    dosage: "400mg",
    medicationType: "Capsule",
    description: "Non-steroidal anti-inflammatory drug (NSAID) for pain relief.",
    ingredients: ["Ibuprofen"],
    sideEffects: ["Stomach upset", "Dizziness"],
    contraindications: ["Peptic ulcer"],
    usageInstructions: "Take one capsule every 8 hours with food.",
    isPrescriptionRequired: true,
    cost: 10.0,
    startDate: DateTime(2024, 9, 6),
    duration: Duration(days: 7), // Changed to Duration
    doctorID: "D002",
    doctorName: "Dr. Johnson"
  ),
  MedicationDetails(
    id: "003",
    name: "Amoxicillin",
    brand: "Amoxil",
    dosage: "250mg",
    medicationType: "Capsule",
    description: "Antibiotic for bacterial infections.",
    ingredients: ["Amoxicillin"],
    sideEffects: ["Diarrhea", "Headache"],
    contraindications: ["Allergy to penicillin"],
    usageInstructions: "Take one capsule every 8 hours for 10 days.",
    isPrescriptionRequired: true,
    cost: 20.0,
    startDate: DateTime(2024, 9, 4),
    duration: Duration(days: 10), // Changed to Duration
    doctorID: "D003",
    doctorName: "Dr. Adams"
  ),
  MedicationDetails(
    id: "004",
    name: "Aspirin",
    brand: "Bayer",
    dosage: "325mg",
    medicationType: "Tablet",
    description: "Used to reduce pain, fever, or inflammation.",
    ingredients: ["Acetylsalicylic acid"],
    sideEffects: ["Gastrointestinal bleeding", "Tinnitus"],
    contraindications: ["Bleeding disorder"],
    usageInstructions: "Take one tablet every 4-6 hours as needed.",
    isPrescriptionRequired: false,
    cost: 4.0,
    startDate: DateTime(2024, 9, 3),
    duration: Duration(days: 3), // Changed to Duration
    doctorID: "D004",
    doctorName: "Dr. Williams"
  ),
  MedicationDetails(
    id: "005",
    name: "Loratadine",
    brand: "Claritin",
    dosage: "10mg",
    medicationType: "Tablet",
    description: "Antihistamine used to treat allergies.",
    ingredients: ["Loratadine"],
    sideEffects: ["Dry mouth", "Drowsiness"],
    contraindications: ["Severe liver impairment"],
    usageInstructions: "Take one tablet daily.",
    isPrescriptionRequired: false,
    cost: 15.0,
    startDate: DateTime(2024, 9, 2),
    duration: Duration(days: 14), // Changed to Duration
    doctorID: "D005",
    doctorName: "Dr. Brown"
  ),
];
