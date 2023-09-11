import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAItNRWgJkeqL3AndieK2qgn7kNLN210go",
            authDomain: "playground-97ada.firebaseapp.com",
            projectId: "playground-97ada",
            storageBucket: "playground-97ada.appspot.com",
            messagingSenderId: "498059487775",
            appId: "1:498059487775:web:8d7e9a69555de9ee0b832a"));
  } else {
    await Firebase.initializeApp();
  }
}
