import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDjiuUy98-gQCqJveWz7ewFUhpJr9doUJg",
            authDomain: "leaderboard-template-rp2ht7.firebaseapp.com",
            projectId: "leaderboard-template-rp2ht7",
            storageBucket: "leaderboard-template-rp2ht7.firebasestorage.app",
            messagingSenderId: "19872584196",
            appId: "1:19872584196:web:44855924a969f529c85b51",
            measurementId: "G-V1HE2KY0DN"));
  } else {
    await Firebase.initializeApp();
  }
}
