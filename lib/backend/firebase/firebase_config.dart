import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBH8gKqrZlmoJ05fel1L__iy5ULmF19Ark",
            authDomain: "resume-fbla.firebaseapp.com",
            projectId: "resume-fbla",
            storageBucket: "resume-fbla.appspot.com",
            messagingSenderId: "47662699052",
            appId: "1:47662699052:web:813b1eab1a09050f98f789",
            measurementId: "G-7M90T10Z0R"));
  } else {
    await Firebase.initializeApp();
  }
}
