import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDlI7X-Ozv6nMbncCd6abzFtwrMHrpZ7ns",
            authDomain: "polling-app-a9109.firebaseapp.com",
            projectId: "polling-app-a9109",
            storageBucket: "polling-app-a9109.firebasestorage.app",
            messagingSenderId: "595518998171",
            appId: "1:595518998171:web:5f6392b2904f758e41683e"));
  } else {
    await Firebase.initializeApp();
  }
}
