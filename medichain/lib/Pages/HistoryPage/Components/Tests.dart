import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medichain/Pages/HistoryPage/Components/TestsCard.dart';

class Tests extends StatefulWidget {
  const Tests({super.key});

  @override
  State<Tests> createState() => _TestsState();
}

class _TestsState extends State<Tests> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        // color:Colors.green,
        // width: 200,
        child: SingleChildScrollView(
          child: Column(
            children: [
              TestCard(details: _test_history[0],),
              TestCard(details: _test_history[1],),
              TestCard(details: _test_history[2],),
              TestCard(details: _test_history[3],),
              TestCard(details: _test_history[4],),
          
            ],
          ),
        ),
      ),
    );
  }
}



List<TestDetails> _test_history=[
  TestDetails(
  id: '001',
  patientName: 'Alice Smith',
  doctorName: 'Dr. Gregory House',
  doctorType: 'Diagnostician',
  testTime: DateTime(2024, 9, 10, 10, 00, 00),
  hospitalName: 'Princeton-Plainsboro Hospital',
  hospitalLocation: 'Princeton, NJ',
  filePaths: ['path/to/xray1.png', 'path/to/report1.pdf'],
  testName: 'X-Ray',
  testType: 'Imaging',
  testResult: 'Completed',
  resultSummary: 'No fractures detected.',
  resultDate: DateTime(2024, 9, 11),
  testDescription: 'Chest X-Ray to check for any fractures or abnormalities.',
  testPreparations: ['Remove metal objects', 'Wear hospital gown'],
  cost: 150.00,
  comments: ['Technician: John Doe', 'Doctor: Review needed'],
),

  TestDetails(
  id: '002',
  patientName: 'Bob Johnson',
  doctorName: 'Dr. Sarah Tancredi',
  doctorType: 'General Practitioner',
  testTime: DateTime(2024, 9, 12, 14, 30, 00),
  hospitalName: 'Fox River Medical Center',
  hospitalLocation: 'Chicago, IL',
  filePaths: ['path/to/bloodtest1.pdf'],
  testName: 'Blood Test',
  testType: 'Laboratory',
  testResult: 'Pending',
  resultSummary: '',
  resultDate: DateTime(2024, 9, 15),
  testDescription: 'Routine blood test to check cholesterol levels.',
  testPreparations: ['Fast for 12 hours before test'],
  cost: 75.00,
  comments: ['Patient needs to be notified once results are in.'],
  ),

  TestDetails(
  id: '003',
  patientName: 'Charlie Davis',
  doctorName: 'Dr. Meredith Grey',
  doctorType: 'Surgeon',
  testTime: DateTime(2024, 9, 13, 9, 00, 00),
  hospitalName: 'Seattle Grace Hospital',
  hospitalLocation: 'Seattle, WA',
  filePaths: ['path/to/mri1.png', 'path/to/mri2.png'],
  testName: 'MRI Scan',
  testType: 'Imaging',
  testResult: 'Completed',
  resultSummary: 'Minor disc herniation detected in L4-L5 region.',
  resultDate: DateTime(2024, 9, 14),
  testDescription: 'MRI scan of the lumbar spine to check for disc issues.',
  testPreparations: ['Do not eat or drink 4 hours before the test'],
  cost: 600.00,
  comments: ['Surgery may be required depending on the severity.'],
  ),

  TestDetails(
  id: '004',
  patientName: 'Diana Prince',
  doctorName: 'Dr. Bruce Wayne',
  doctorType: 'Oncologist',
  testTime: DateTime(2024, 9, 14, 11, 15, 00),
  hospitalName: 'Gotham General Hospital',
  hospitalLocation: 'Gotham City',
  filePaths: ['path/to/biopsy1.pdf'],
  testName: 'Biopsy',
  testType: 'Laboratory',
  testResult: 'Completed',
  resultSummary: 'No malignant cells detected.',
  resultDate: DateTime(2024, 9, 16),
  testDescription: 'Biopsy of the breast tissue to check for cancer cells.',
  testPreparations: ['Stop blood thinners 3 days before the procedure'],
  cost: 500.00,
  comments: ['Follow-up appointment scheduled for next week.'],
  ),
  TestDetails(
  id: '005',
  patientName: 'Eve Torres',
  doctorName: 'Dr. Richard Kimble',
  doctorType: 'Cardiologist',
  testTime: DateTime(2024, 9, 15, 8, 45, 00),
  hospitalName: 'Chicago Memorial Hospital',
  hospitalLocation: 'Chicago, IL',
  filePaths: ['path/to/ekg1.png'],
  testName: 'EKG',
  testType: 'Diagnostic',
  testResult: 'Completed',
  resultSummary: 'Normal sinus rhythm, no abnormalities detected.',
  resultDate: DateTime(2024, 9, 15),
  testDescription: 'Electrocardiogram to monitor heart activity.',
  testPreparations: ['Avoid caffeine for 24 hours before the test'],
  cost: 200.00,
  comments: ['Patient advised to maintain a healthy diet and exercise.'],
  )

];
