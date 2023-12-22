import 'package:ecommerce_app/config/account_info_storage.dart';
import 'package:ecommerce_app/model/api/api_login.dart';
import 'package:ecommerce_app/model/api/api_signup.dart';
import 'package:ecommerce_app/model/datajson/user_json.dart';
import 'package:ecommerce_app/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileControlleur extends GetxController {
  bool isVisiblePassword = true;
  void showPassword() {
    isVisiblePassword = !isVisiblePassword;

    update();
  }

  TextEditingController emailControlleur = TextEditingController();
  TextEditingController passwordControlleur = TextEditingController();
  TextEditingController nameControlleur = TextEditingController();
  TextEditingController phoneControlleur = TextEditingController();
  ApiLogin apiLogin = ApiLogin();
  UserJson? userJson;
  ApiSignup apiSignup = ApiSignup();
  login() {
    Map<String, dynamic> data = {
      'username': nameControlleur.text,
      'password': passwordControlleur.text,
    };
    apiLogin.postData(data).then((value) {
      print('value login = $value');
      userJson = value as UserJson?;
      AccountInfoStorage.saveName(userJson!.user!.name);
      print('name = ${AccountInfoStorage.readName()}');
      AccountInfoStorage.saveemail(userJson!.user!.email);
      print('data = ${userJson!.user!.name}');
      Get.to(HomePage());
    }).onError((error, stackTrace) {
      print('error = $error');
    });
  }

  signup() {
    Map<String, dynamic> data = {
      'name': nameControlleur.text,
      'phone': phoneControlleur.text,
      'email': emailControlleur.text,
      'password': passwordControlleur.text,
      'username': nameControlleur.text,
    };
    apiSignup.postData(data).then((value) {
      print('value signup = $value');
      // userJson = value as UserJson?;
      print('data = ${userJson!.tokens!.accessToken}');
      Get.to(HomePage());
    }).onError((error, stackTrace) {
      print('error = $error');
    });
  }
}
