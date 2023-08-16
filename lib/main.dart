import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lnf/firebase_options.dart';
import 'LoginPage.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lost & Found',
      theme: ThemeData(primarySwatch: Colors.blue), // Customize your app theme
      home: LoginPage(), // Use the LoginPage widget as your initial screen
    );
  }
  // This widget is the root of your application.
}