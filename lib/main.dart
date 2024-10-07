import 'package:flutter/material.dart';
import 'package:login_user/pages/YachtListPage.dart';
// Importa la vista de la lista de yates

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: YachtListPage(), // Aquí llamas a YachtListPage como página inicial
    );
  }
}
