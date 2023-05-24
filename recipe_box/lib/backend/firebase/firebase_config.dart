import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB415qMc9UdIUTYFet5S-6yAdc3AttRRRE",
            authDomain: "recipebox-9900a.firebaseapp.com",
            projectId: "recipebox-9900a",
            storageBucket: "recipebox-9900a.appspot.com",
            messagingSenderId: "570588242519",
            appId: "1:570588242519:web:1da5dcc723cb0167763912",
            measurementId: "G-N4QKQEZ3V9"));
  } else {
    await Firebase.initializeApp();
  }
}
