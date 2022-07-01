import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_ecommerce/signup/signup.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My E-Commerce',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const Scaffold(body: SafeArea(child: SignUp())),
    );
  }
}
