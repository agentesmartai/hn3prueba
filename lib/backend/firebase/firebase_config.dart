import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCKmfVl0KETzm7fU3vqjDrHdzDY-Yy-sok",
            authDomain: "linea-130-pureba-axi67w.firebaseapp.com",
            projectId: "linea-130-pureba-axi67w",
            storageBucket: "linea-130-pureba-axi67w.appspot.com",
            messagingSenderId: "598154551058",
            appId: "1:598154551058:web:aa2df0f01c18f0f1315dcb"));
  } else {
    await Firebase.initializeApp();
  }
}
