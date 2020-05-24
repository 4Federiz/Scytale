import 'package:xxtea/xxtea.dart';

class Brain {
  static String encryptedMessage({String str, String key}) {
    return xxtea.encryptToString(str, key);
  }

  static String decryptedMessage({String str, String key}) {
    return xxtea.decryptToString(str, key);
  }
}
