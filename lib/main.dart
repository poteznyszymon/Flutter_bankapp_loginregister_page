import 'package:bank_app/pages/home_page.dart';
import 'package:bank_app/pages/login_page.dart';
import 'package:bank_app/pages/register_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        '/LoginPage': (context) => const LoginPage(),
        '/RegisterPage': (context) => const RegisterPage(),
      },
    );
  }
}
