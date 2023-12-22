import 'package:ecommerce_app/controlleur/product_controlleur.dart';
import 'package:ecommerce_app/controlleur/profile_controlleur.dart';
import 'package:get/get.dart';

class AllBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(ProfileControlleur());
    Get.put(ProductControlleur());
  }
}
