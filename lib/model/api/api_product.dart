import 'package:ecommerce_app/config/app_url.dart';
import 'package:ecommerce_app/model/api/api_manager.dart';
import 'package:ecommerce_app/model/datajson/abstract_jsonresource.dart';
import 'package:ecommerce_app/model/datajson/product_json.dart';

class ApiProduct extends ApiManager {
  String id = '';
  @override
  String apiUrl() {
    return AppUrl.productUrl + id;
  }

  @override
  AbstractJsonResource datafromjson(data) {
    return ProductJson.fromJson(data);
  }
}
