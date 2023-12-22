import 'package:ecommerce_app/config/app_url.dart';
import 'package:ecommerce_app/model/api/api_manager.dart';
import 'package:ecommerce_app/model/datajson/abstract_jsonresource.dart';
import 'package:ecommerce_app/model/datajson/list_product_json.dart';

class ApiListProduct extends ApiManager {
  @override
  String apiUrl() {
    return AppUrl.productUrl;
  }

  @override
  AbstractJsonResource datafromjson(data) {
    return ListProductJson.fromJson(data);
  }
}
