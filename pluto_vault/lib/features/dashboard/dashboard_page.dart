import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pluto Vault'),
      ),
      body: const Center(
        child: Text(
          'Your Investments. Your Control.',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}