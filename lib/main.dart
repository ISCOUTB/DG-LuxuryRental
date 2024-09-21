import 'package:flutter/material.dart';
import 'package:login_user/pages/dashboard_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

// Dashboard
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Simulamos la autenticación y navegamos al dashboard
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DashboardView()),
            );
          },
          child: const Text('Iniciar sesión'),
        ),
      ),
    );
  }
}
