import 'package:flutter/material.dart';
import 'features/dashboard/dashboard_page.dart';

void main() {
  runApp(const PlutoVaultApp());
}

class PlutoVaultApp extends StatelessWidget {
  const PlutoVaultApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pluto Vault',
      debugShowCheckedModeBanner: false,
      home: const DashboardPage(),
    );
  }
}