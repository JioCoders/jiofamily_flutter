import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          ListTile(title: Text("Profile")),
          ListTile(title: Text("Currency")),
          ListTile(title: Text("App Lock")),
          ListTile(title: Text("Logout")),
        ],
      ),
    );
  }
}
