import 'package:firebase_core/firebase_core.dart';
import 'screen/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyDlHvs9Q9ZSpulyY6OYeO6nDplw1snmsGI",
      appId: "1:1045454245119:web:a119b37fedf0e16a9650ca",
      messagingSenderId: "1045454245119",
      projectId: "laundry-ad1ab ",
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
