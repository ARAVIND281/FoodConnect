import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAVB02lb72bBxlAOXCWnEZOAZymZ2NIOrU",
            authDomain: "foodconnect-hackbattle.firebaseapp.com",
            projectId: "foodconnect-hackbattle",
            storageBucket: "foodconnect-hackbattle.appspot.com",
            messagingSenderId: "807415246507",
            appId: "1:807415246507:web:de12f9d0dba9768c2811ee"));
  } else {
    await Firebase.initializeApp();
  }
}
