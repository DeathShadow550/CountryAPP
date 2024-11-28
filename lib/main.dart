import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Home.dart';
import 'login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyBKekabaHksMKObsfaFTizsqJryk5cc8WU",
      authDomain: "countrycityapp.firebaseapp.com",
      projectId: "countrycityapp",
      storageBucket: "countrycityapp.appspot.com",
      messagingSenderId: "941538037978",
      appId: "1:941538037978:web:84939065ea02584ad015e3",
      measurementId: "G-STYQ81VQBV",
    ),
  ); // Initialize Firebase with web configuration
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

          debugShowCheckedModeBanner: false,
          title: 'Flutter Firebase Login',
          theme: ThemeData(primarySwatch: Colors.blue),
          initialRoute: '/',
          routes: {
            '/': (context) => LoginScreen(),
            '/home': (context) => HomeScreen(),
          },
        );

    }
}
