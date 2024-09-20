import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyC5e21IZJ9XSFyKN8T0HDLvKvjUMKaiXQQ",
            authDomain: "tv-la-capitale-6t6qt3.firebaseapp.com",
            projectId: "tv-la-capitale-6t6qt3",
            storageBucket: "tv-la-capitale-6t6qt3.appspot.com",
            messagingSenderId: "1024793276639",
            appId: "1:1024793276639:web:b901c73ca98f4f0c44b96a"));
  } else {
    await Firebase.initializeApp();
  }
}
