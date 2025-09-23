import 'package:flutter/material.dart';
import 'package:jiofamily/src/route_name.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      if(context.mounted){
        Navigator.pushReplacementNamed(context, Routes.login);
      }
    });

    return const Scaffold(
      body: Center(
        child: Text("JioFamily", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
