import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'dart:convert'; // For encoding JSON

// import 'package:permission_handler/permission_handler.dart';
class EmergencyPage extends StatefulWidget {
  String pageType = "";
  EmergencyPage({Key? key, required this.pageType}): super(key: key);

  @override
  State<EmergencyPage> createState() => _EmergencyPageState();
}

class _EmergencyPageState extends State<EmergencyPage> {
  String latitude = '';
  String longitude = '';
  bool isLoading = false;

  // Method to get the current location
  Future<void> _getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Check if location services are enabled
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    // Check for permission
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied.');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // Get the current position
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    setState(() {
      log("$latitude, $longitude");
      latitude = position.latitude.toString();
      longitude = position.longitude.toString();
    });

    // Send coordinates to the API
    _sendCoordinates(position.latitude, position.longitude);
  }

  // Method to send the coordinates via HTTP POST
  Future<void> _sendCoordinates(double lat, double lon) async {
    setState(() {
      isLoading = true;
    });

    var url = Uri.parse('http://192.168.142.150:5000/coordinates'); // Replace with your Flask API URL
    Map<String, dynamic> data = {
      "latitude": lat,
      "longitude": lon
    };

    try {
      var response = await http.post(
        url,
        headers: {"Content-Type": "application/json"},
        body: json.encode(data),
      );

      if (response.statusCode == 200) {
        print('Success: ${response.body}');
      } else {
        print('Error: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Send Location'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            isLoading
                ? CircularProgressIndicator()
                : Column(
                    children: [
                      Text('Latitude: $latitude'),
                      Text('Longitude: $longitude'),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: _getCurrentLocation,
                        child: Text('Get Current Location'),
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }

}