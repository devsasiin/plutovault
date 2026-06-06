import 'package:flutter/material.dart';

void main() {
  runApp(const PlutoApp());
}

class PlutoApp extends StatelessWidget {
  const PlutoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pluto Vault',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Pluto Vault'),
        ),
        body: const Center(
          child: Text(
            'Pluto Vault Running Successfully!',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}