import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBA_0YzvHGtcSF6Vmkk7LsXtDcy2DYW0g4",
            authDomain: "kisan-mitra-a3bc4.firebaseapp.com",
            projectId: "kisan-mitra-a3bc4",
            storageBucket: "kisan-mitra-a3bc4.firebasestorage.app",
            messagingSenderId: "248506852741",
            appId: "1:248506852741:web:56dba2d7639ec258cd90ec"));
  } else {
    await Firebase.initializeApp();
  }
}
