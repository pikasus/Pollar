import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAdUgjzaKYP7gsC22OpWmgKHW4v_U8yKmE",
            authDomain: "poll-mv6s8u.firebaseapp.com",
            projectId: "poll-mv6s8u",
            storageBucket: "poll-mv6s8u.firebasestorage.app",
            messagingSenderId: "681139015771",
            appId: "1:681139015771:web:9e91c2602a4e7de0d5ef7e"));
  } else {
    await Firebase.initializeApp();
  }
}
