import 'package:ecommerce_app/config/app_url.dart';
import 'package:ecommerce_app/model/api/api_manager.dart';
import 'package:ecommerce_app/model/datajson/abstract_jsonresource.dart';
import 'package:ecommerce_app/model/datajson/user_json.dart';

class ApiLogin extends ApiManager {
  @override
  String apiUrl() {
    return AppUrl.loginUrl;
  }

  @override
  AbstractJsonResource datafromjson(data) {
    return UserJson.fromJson(data);
  }
}
