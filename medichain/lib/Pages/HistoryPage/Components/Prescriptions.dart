import 'package:flutter/cupertino.dart';
import 'package:medichain/Pages/HistoryPage/Components/PrescriptionCard.dart';

class Prescriptions extends StatefulWidget {
  const Prescriptions({super.key});

  @override
  State<Prescriptions> createState() => _PrescriptionsState();
}

class _PrescriptionsState extends State<Prescriptions> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        // color:Colors.green,
        // width: 200,
        child: SingleChildScrollView(
          child: Column(
            children: [
              PrescriptionCard(details: prescriptions[0]),
              PrescriptionCard(details: prescriptions[1]),
              PrescriptionCard(details: prescriptions[2]),
              PrescriptionCard(details: prescriptions[3]),
              PrescriptionCard(details: prescriptions[4]),

            ],
          ),
        ),
      ),
    );
  }
}

List<PrescriptionDetails> prescriptions = [
  PrescriptionDetails(
    id: "P001",
    patientName: "John Doe",
    doctorName: "Dr. Sean Murphy",
    doctorType: "Physician",
    prescriptionDate: DateTime(2023, 7, 15,12,10),
    hospitalName: "Apollo Hospitals",
    hospitalLocation: "New York",
    medicationNames: ["Amoxicillin", "Ibuprofen"],
    dosages: ["500mg", "200mg"],
    instructions: ["Take 1 tablet every 8 hours", "Take 1 tablet every 6 hours for pain"],
    diagnosis: "Sinus Infection",
    prescriptionNotes: "Increase fluid intake.",
    cost: 120.0,
    comments: ["Patient has mild allergies to dust."],
    tests: ["CBC", "X-ray"],
    followupDate: DateTime(2023, 7, 22),
    imagePath: "assets/Profiles/Doctor_1.png",
    primaryComplain: "Severe headache and nasal congestion",


  ),
  PrescriptionDetails(
    id: "P002",
    patientName: "John Doe",
    doctorName: "Dr. Sean Murphy",
    doctorType: "Physician",
    prescriptionDate: DateTime(2023, 8, 5,10,30),
    hospitalName: "Apollo Hospitals",
    hospitalLocation: "New York",
    medicationNames: ["Paracetamol", "Cough Syrup"],
    dosages: ["500mg", "10ml"],
    instructions: ["Take 1 tablet twice a day", "Take 10ml twice a day after meals"],
    diagnosis: "Common Cold",
    prescriptionNotes: "Rest well and avoid cold drinks.",
    cost: 85.0,
    comments: ["No signs of complications."],
    tests: ["Throat Swab Test"],
    followupDate: DateTime(2023, 8, 12),
    imagePath: "assets/Profiles/Doctor_admin.jpg",
    primaryComplain: "Fever and persistent cough",

  ),
  PrescriptionDetails(
    id: "P003",
    patientName: "John Doe",
    doctorName: "Dr. Sean Murphy",
    doctorType: "Physician",
    prescriptionDate: DateTime(2023, 9, 10, 11, 40),
    hospitalName: "Apollo Hospitals",
    hospitalLocation: "New York",
    medicationNames: ["Omeprazole", "Antacid"],
    dosages: ["20mg", "1 sachet"],
    instructions: ["Take 1 tablet before meals", "Take 1 sachet after meals if needed"],
    diagnosis: "Gastric Ulcer",
    prescriptionNotes: "Follow a strict diet and avoid spicy foods.",
    cost: 95.0,
    comments: ["Patient reports occasional stomach pain."],
    tests: ["Endoscopy", "Blood Test"],
    followupDate: DateTime(2023, 9, 17),
    imagePath: "assets/Profiles/Doctor_admin.jpg",
    primaryComplain: "Stomach pain and heartburn",

  ),
  PrescriptionDetails(
    id: "P004",
    patientName: "John Doe",
    doctorName: "Dr. Sean Murphy",
    doctorType: "Physician",
    prescriptionDate: DateTime(2023, 10, 1, 19, 10),
    hospitalName: "Apollo Hospitals",
    hospitalLocation: "New York",
    medicationNames: ["Metformin", "Glibenclamide"],
    dosages: ["500mg", "5mg"],
    instructions: ["Take 1 tablet twice a day with food", "Take 1 tablet daily in the morning"],
    diagnosis: "Type 2 Diabetes",
    prescriptionNotes: "Monitor blood sugar regularly.",
    cost: 150.0,
    comments: ["Patient is advised to exercise regularly."],
    tests: ["HbA1c", "Blood Glucose Test"],
    followupDate: DateTime(2023, 10, 15),
    imagePath: "assets/Profiles/Doctor_admin.jpg",
    primaryComplain: "Fatigue and frequent urination",

  ),
  PrescriptionDetails(
    id: "P005",
    patientName: "John Doe",
    doctorName: "Dr. Sean Murphy",
    doctorType: "Physician",
    prescriptionDate: DateTime(2023, 11, 1, 15, 00),
    hospitalName: "Apollo Hospitals",
    hospitalLocation: "New York",
    medicationNames: ["Aspirin", "Clopidogrel"],
    dosages: ["75mg", "75mg"],
    instructions: ["Take 1 tablet daily", "Take 1 tablet daily"],
    diagnosis: "Coronary Artery Disease",
    prescriptionNotes: "Advised to avoid smoking and fatty foods.",
    cost: 180.0,
    comments: ["Patient shows improvement in cholesterol levels."],
    tests: ["ECG", "Cholesterol Test"],
    followupDate: DateTime(2023, 11, 15),
    imagePath: "assets/Profiles/Doctor_admin.jpg",
    primaryComplain: "Chest pain and shortness of breath",

  ),
];
