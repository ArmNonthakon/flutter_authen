import 'package:arm_assigment_login/ui/homepage_screen.dart';
import 'package:arm_assigment_login/ui/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomepageScreen(),
    );
  }
}
