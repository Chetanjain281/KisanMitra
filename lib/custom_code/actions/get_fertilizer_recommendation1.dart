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
Future<List<double>> getFertilizerRecommendation1(
    String cropType, String stage, String symptom, double area) async {
  List<double> recommendation = [];

  // Set Pesticide and Weedicide to 0 initially
  double pesticide = 0.0;
  double weedicide = 0.0;

  // Logic for fertilizer recommendation including Micronutrient (added as a general variable)
  if (cropType == 'Vegetable') {
    if (stage == 'Seedling') {
      if (symptom == 'Yellow leaves') {
        recommendation = [
          30.0,
          10.0,
          10.0,
          1.0,
          pesticide,
          weedicide,
          area
        ]; // N, P, K, Micronutrients, Pesticide, Weedicide, Area
      } else if (symptom == 'Stunted growth') {
        recommendation = [40.0, 20.0, 20.0, 1.5, pesticide, weedicide, area];
      } else if (symptom == 'Weak fruit/flowering') {
        recommendation = [20.0, 40.0, 20.0, 1.2, pesticide, weedicide, area];
      } else {
        recommendation = [25.0, 15.0, 10.0, 1.0, pesticide, weedicide, area];
      }
    } else if (stage == 'Vegetation') {
      if (symptom == 'Yellow leaves') {
        recommendation = [30.0, 20.0, 20.0, 1.2, pesticide, weedicide, area];
      } else if (symptom == 'Stunted growth') {
        recommendation = [50.0, 30.0, 30.0, 1.8, pesticide, weedicide, area];
      } else if (symptom == 'Weak fruit/flowering') {
        recommendation = [20.0, 50.0, 30.0, 1.5, pesticide, weedicide, area];
      } else {
        recommendation = [40.0, 30.0, 20.0, 1.5, pesticide, weedicide, area];
      }
    } else if (stage == 'Flowering/Fruiting') {
      if (symptom == 'Yellow leaves') {
        recommendation = [20.0, 30.0, 40.0, 1.5, pesticide, weedicide, area];
      } else if (symptom == 'Stunted growth') {
        recommendation = [30.0, 40.0, 30.0, 2.0, pesticide, weedicide, area];
      } else if (symptom == 'Weak fruit/flowering') {
        recommendation = [10.0, 40.0, 50.0, 2.0, pesticide, weedicide, area];
      } else {
        recommendation = [15.0, 40.0, 45.0, 1.5, pesticide, weedicide, area];
      }
    }
  } else if (cropType == 'Fruit') {
    if (stage == 'Seedling') {
      if (symptom == 'Yellow leaves') {
        recommendation = [30.0, 10.0, 10.0, 1.0, pesticide, weedicide, area];
      } else if (symptom == 'Stunted growth') {
        recommendation = [40.0, 20.0, 20.0, 1.5, pesticide, weedicide, area];
      } else if (symptom == 'Weak fruit/flowering') {
        recommendation = [20.0, 40.0, 20.0, 1.2, pesticide, weedicide, area];
      } else {
        recommendation = [25.0, 15.0, 10.0, 1.0, pesticide, weedicide, area];
      }
    } else if (stage == 'Vegetation') {
      if (symptom == 'Yellow leaves') {
        recommendation = [30.0, 20.0, 20.0, 1.2, pesticide, weedicide, area];
      } else if (symptom == 'Stunted growth') {
        recommendation = [50.0, 30.0, 30.0, 1.8, pesticide, weedicide, area];
      } else if (symptom == 'Weak fruit/flowering') {
        recommendation = [20.0, 50.0, 30.0, 1.5, pesticide, weedicide, area];
      } else {
        recommendation = [40.0, 30.0, 20.0, 1.5, pesticide, weedicide, area];
      }
    } else if (stage == 'Flowering/Fruiting') {
      if (symptom == 'Yellow leaves') {
        recommendation = [20.0, 30.0, 40.0, 1.5, pesticide, weedicide, area];
      } else if (symptom == 'Stunted growth') {
        recommendation = [30.0, 40.0, 30.0, 2.0, pesticide, weedicide, area];
      } else if (symptom == 'Weak fruit/flowering') {
        recommendation = [10.0, 40.0, 50.0, 2.0, pesticide, weedicide, area];
      } else {
        recommendation = [15.0, 40.0, 45.0, 1.5, pesticide, weedicide, area];
      }
    }
  } else if (cropType == 'Flower') {
    if (stage == 'Seedling') {
      if (symptom == 'Yellow leaves') {
        recommendation = [30.0, 10.0, 10.0, 1.0, pesticide, weedicide, area];
      } else if (symptom == 'Stunted growth') {
        recommendation = [40.0, 20.0, 20.0, 1.5, pesticide, weedicide, area];
      } else if (symptom == 'Weak fruit/flowering') {
        recommendation = [20.0, 40.0, 20.0, 1.2, pesticide, weedicide, area];
      } else {
        recommendation = [25.0, 15.0, 10.0, 1.0, pesticide, weedicide, area];
      }
    } else if (stage == 'Vegetation') {
      if (symptom == 'Yellow leaves') {
        recommendation = [30.0, 20.0, 20.0, 1.2, pesticide, weedicide, area];
      } else if (symptom == 'Stunted growth') {
        recommendation = [50.0, 30.0, 30.0, 1.8, pesticide, weedicide, area];
      } else if (symptom == 'Weak fruit/flowering') {
        recommendation = [20.0, 50.0, 30.0, 1.5, pesticide, weedicide, area];
      } else {
        recommendation = [40.0, 30.0, 20.0, 1.5, pesticide, weedicide, area];
      }
    } else if (stage == 'Flowering/Fruiting') {
      if (symptom == 'Yellow leaves') {
        recommendation = [20.0, 30.0, 40.0, 1.5, pesticide, weedicide, area];
      } else if (symptom == 'Stunted growth') {
        recommendation = [30.0, 40.0, 30.0, 2.0, pesticide, weedicide, area];
      } else if (symptom == 'Weak fruit/flowering') {
        recommendation = [10.0, 40.0, 50.0, 2.0, pesticide, weedicide, area];
      } else {
        recommendation = [15.0, 40.0, 45.0, 1.5, pesticide, weedicide, area];
      }
    }
  }

  return recommendation;
}
