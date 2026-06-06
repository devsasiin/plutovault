import 'package:flutter/material.dart';
import '../portfolio/portfolio_page.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pluto Vault'),
      ),
      body: Padding(
  padding: const EdgeInsets.all(16),
  child: Column(
    children: [
      ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const PortfolioPage()),
          );
        },
        child: const Text('Portfolio'),
      ),
      ElevatedButton(
        onPressed: () {},
        child: const Text('SIP'),
      ),
      ElevatedButton(
        onPressed: () {},
        child: const Text('Backup'),
      ),
    ],
  ),
),
    );
  }
}