import 'package:ecommerce_app/config/account_info_storage.dart';
import 'package:ecommerce_app/model/api/api_listproduct.dart';
import 'package:ecommerce_app/model/api/api_product.dart';
import 'package:ecommerce_app/model/datajson/list_product_json.dart';
import 'package:ecommerce_app/model/datajson/product_json.dart';
import 'package:ecommerce_app/view/home_page.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ProductControlleur extends GetxController {
  ApiListProduct apiListProduct = ApiListProduct();
  ListProductJson? listProductJson;
  int selectedIndex = 0;
  void OnTapItem(int index) {
    print('index = $index');

    selectedIndex = index;

    switch (selectedIndex) {
      case 0:
        Get.to(HomePage());
        break;
      case 1:
        Get.to(HomePage());
        break;
      case 2:
        Get.to(HomePage());
        break;
    }
    update();
  }

  getListProduct() {
    apiListProduct.getdata().then((value) {
      listProductJson = value as ListProductJson?;
      print('name = ${listProductJson!.productData![0].namePro}');
    }).onError((error, stackTrace) {});
    update();
  }

  ApiProduct apiProduct = ApiProduct();
  ProductJson? productJson;
  getProduitById() {
    apiProduct.id = AccountInfoStorage.readIdProduct().toString();
    apiProduct.getdata().then((value) {
      productJson = value as ProductJson?;
      print('name= ${productJson!.existingproduct!.namePro}');
    }).onError((error, stackTrace) {});
  }
}
