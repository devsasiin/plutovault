import 'dart:io';

import 'package:path_provider/path_provider.dart';

class VaultStorageService {
  Future<File> getVaultFile() async {
    final dir = await getApplicationDocumentsDirectory();

    return File('${dir.path}/Vault.pluto');
  }
}