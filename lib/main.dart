import 'package:flutter/material.dart';
//import 'package:login_user/pages/dashboard_view.dart';
import 'package:login_user/pages/login_page.dart'; // Importas tu página de login

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(), // Aquí llamas a LoginPage como página inicial
    );
  }
}
