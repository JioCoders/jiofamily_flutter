import 'package:flutter/material.dart';
import 'package:jiofamily/src/route_name.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text("Continue"),
          onPressed: () => Navigator.pushReplacementNamed(context, Routes.dashboard),
        ),
      ),
    );
  }
}
