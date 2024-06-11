import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyA5UOIaJFJldCak7JJTMlCPAOptT2eKYHs",
            authDomain: "programacaoeventoconedu.firebaseapp.com",
            projectId: "programacaoeventoconedu",
            storageBucket: "programacaoeventoconedu.appspot.com",
            messagingSenderId: "461805194562",
            appId: "1:461805194562:web:dbff7bfb6d08663856ccdb"));
  } else {
    await Firebase.initializeApp();
  }
}
