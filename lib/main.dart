import 'package:chat_tutorial/services/auth/auth_gate.dart';
import 'package:chat_tutorial/services/auth/login_or_register.dart';
import 'package:chat_tutorial/firebase_options.dart';
import 'package:chat_tutorial/pages/login_page.dart';
import 'package:chat_tutorial/pages/register_page.dart';
import 'package:chat_tutorial/themes/light_mode.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthGate(),
      theme: lightMode,
    );
  }
}
