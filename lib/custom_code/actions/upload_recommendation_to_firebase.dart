// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_database/firebase_database.dart'; // Firebase Realtime Database import

// Define the action name and arguments for the function
Future<void> uploadRecommendationToFirebase(List<double> recommendation) async {
  // Initialize Firebase Database reference
  DatabaseReference databaseReference = FirebaseDatabase.instance.ref();

  // Create a unique ID for each upload (you can use any logic here)
  String recommendationId =
      databaseReference.child('recommendations').push().key ?? '';

  // Prepare data to be uploaded (Recommendation data with fields)
  Map<String, dynamic> recommendationData = {
    'N': recommendation[0], // Nitrogen
    'P': recommendation[1], // Phosphorus
    'K': recommendation[2], // Potassium
    'Micronutrients': recommendation[3], // Micronutrients
    'Pesticide': recommendation[4], // Pesticide (set to 0 initially)
    'Weedicide': recommendation[5], // Weedicide (set to 0 initially)
    'Area': recommendation[6], // Area (in acres)
  };

  // Upload data to Firebase under the "recommendations" node
  try {
    await databaseReference
        .child('recommendations')
        .child(recommendationId)
        .set(recommendationData);
    print("Recommendation uploaded successfully!");
  } catch (error) {
    print("Error uploading recommendation: $error");
  }
}
