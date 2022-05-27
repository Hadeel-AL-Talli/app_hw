import 'package:as3/Login.dart';
import 'package:as3/screens/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart'
    show BuildContext, Key, MaterialApp, StatelessWidget, Widget, WidgetsFlutterBinding, runApp;


void main() async {
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
