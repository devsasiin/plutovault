import 'package:flutter/material.dart';
import '../portfolio/portfolio_page.dart';
import 'dart:convert';

import '../../core/encryption/encryption_service.dart';
import '../../core/storage/vault_storage_service.dart';
import '../../data/models/vault_data.dart';
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
      ElevatedButton(
        onPressed: () async {

          final vault = VaultData(
            portfolios: [],
            sips: [],
          );

          final jsonData =
              jsonEncode(vault.toJson());

          final encrypted =
              EncryptionService().encrypt(jsonData);

          await VaultStorageService()
              .saveVault(encrypted);

          if (context.mounted) {
            ScaffoldMessenger.of(context)
                .showSnackBar(
              const SnackBar(
                content: Text('Vault Saved'),
              ),
            );
          }
        },
        child: const Text('Create Vault'),
      ),
      ElevatedButton(
        onPressed: () async {

          final encrypted =
              await VaultStorageService()
                  .loadVault();

          if (encrypted == null) {
            return;
          }

          final jsonString =
              EncryptionService()
                  .decrypt(encrypted);

          debugPrint(jsonString);
        },
        child: const Text('Load Vault'),
      ),
    ],
  ),
),
    );
  }
}