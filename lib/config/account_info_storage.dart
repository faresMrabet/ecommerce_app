import 'package:ecommerce_app/config/storage.dart';

class AccountInfoStorage {
  static const String namekey = 'name';
  static const String emailkey = 'email';
  static const String idproductkey = 'id';

  static saveName(String? name) {
    SecureStorage.writeSecureData(key: namekey, value: name!);
  }

  static String? readName() {
    return SecureStorage.readSecureData(namekey);
  }

  static saveemail(String? email) {
    SecureStorage.writeSecureData(key: emailkey, value: email!);
  }

  static String? reademail() {
    return SecureStorage.readSecureData(emailkey);
  }

  static String? saveIdProduct(String? id) {
    SecureStorage.writeSecureData(key: idproductkey, value: id!);
  }

  static String? readIdProduct() {
    return SecureStorage.readSecureData(idproductkey);
  }
}
