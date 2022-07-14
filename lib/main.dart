import 'package:firebase_core/firebase_core.dart';
import 'screen/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyD6G-rMiy2Zw71X7efj9RpNnQZae9v3Hog",
      appId: "1:557948570837:web:ab224dd0085cebcbde265c",
      messagingSenderId: "557948570837",
      projectId: "laundry-3abd6 ",
    ),
  );
  await Hive.initFlutter();
  var box = await Hive.openBox('userBox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.indigo,
        ),
      ),
      home: splashscreen(),
    );
  }
}
