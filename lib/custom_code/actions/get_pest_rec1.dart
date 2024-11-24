// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Define the action name and arguments for the function
Future<List<double>> getPestRec1(double area) async {
  double pest_req = 15 * area;
  List<double> recommendation_pests = [0.0, 0.0, 0.0, 0.0, pest_req, 0.0, area];

  return recommendation_pests;
}
