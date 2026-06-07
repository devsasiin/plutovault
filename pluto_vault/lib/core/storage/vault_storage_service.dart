import 'dart:io';

import 'package:path_provider/path_provider.dart';

class VaultStorageService {
  Future<File> getVaultFile() async {
    final dir = await getApplicationDocumentsDirectory();

    return File('${dir.path}/Vault.pluto');
  }

  Future<void> saveVault(String encryptedData) async {
  final file = await getVaultFile();

  await file.writeAsString(encryptedData);
}

  Future<String?> loadVault() async {
    try {
      final file = await getVaultFile();

      if (await file.exists()) {
        return await file.readAsString();
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }
}