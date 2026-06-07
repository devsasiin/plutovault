import 'dart:convert';

class EncryptionService {
  String encrypt(String plainText) {
    return base64Encode(utf8.encode(plainText));
  }

  String decrypt(String encryptedText) {
    return utf8.decode(base64Decode(encryptedText));
  }
}