import 'package:dio/dio.dart';
import 'package:ecommerce_app/config/app_url.dart';
import 'package:ecommerce_app/model/datajson/abstract_jsonresource.dart';
import 'package:get/get.dart';

abstract class ApiManager {
  Dio dio = Dio(BaseOptions(
    baseUrl: AppUrl.baseUrl,
    connectTimeout: Duration(seconds: 5000),
    receiveTimeout: Duration(seconds: 5000),
    headers: <String, String>{'Content-Type': 'application/json'},
  ));
  String apiUrl(); //function retourne URL
  AbstractJsonResource datafromjson(data); //function retourne les donnees(Data)
  Future<AbstractJsonResource?> postData(datatopost) {
    AbstractJsonResource? data;
    return dio.post(apiUrl(), data: datatopost).then((value) {
      print('value post data = $value');
      data = datafromjson(value.data);
      return data;
    });
  }

  Future<AbstractJsonResource?> getdata({datatoget}) {
    AbstractJsonResource? data;
    return dio.get(apiUrl(), queryParameters: datatoget).then((value) {
      print('value get data = $value');
      data = datafromjson(value.data);
      return data;
    });
  }
}
