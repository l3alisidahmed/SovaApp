import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sova/presentation/welcome_page.dart';
import 'firebase_options.dart';

void main() async {
  // I Added This
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Welcome(),
    );
  }
}
