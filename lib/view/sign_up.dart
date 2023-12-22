import 'package:ecommerce_app/config/app_color.dart';
import 'package:ecommerce_app/controlleur/profile_controlleur.dart';
import 'package:ecommerce_app/view/home_page.dart';
import 'package:ecommerce_app/view/sign_in.dart';
import 'package:ecommerce_app/widget/custom_divider.dart';
import 'package:ecommerce_app/widget/custom_images.dart';
import 'package:ecommerce_app/widget/input_text.dart';
import 'package:ecommerce_app/widget/input_text_password.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends GetView<ProfileControlleur> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 80),
            child: Expanded(
              child: Column(
                children: [
                  const Text(
                    'Create Your Account ',
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'italic',
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  InputText(
                      nameText: 'name',
                      hint: 'enter your name,',
                      controller: controller.nameControlleur,
                      iconData: Icons.account_box,
                      obscuretexte: false),
                  InputText(
                      nameText: 'email',
                      hint: 'enter your email,',
                      controller: controller.emailControlleur,
                      iconData: Icons.email,
                      obscuretexte: false),
                  GetBuilder<ProfileControlleur>(
                      // init: profilecontr,
                      builder: (controller) {
                    return InputTextPassword(
                        nameText: 'password',
                        hint: 'enter your password,',
                        controller: controller.passwordControlleur,
                        iconData: Icons.lock,
                        iconData2: controller.isVisiblePassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                        function: () {
                          controller.showPassword();
                          print(
                              'controllleur is visible password ${controller.isVisiblePassword}');
                        },
                        obscuretexte: controller.isVisiblePassword);
                  }),
                  InputText(
                      nameText: 'phone',
                      hint: 'enter your phone,',
                      controller: controller.phoneControlleur,
                      iconData: Icons.phone,
                      obscuretexte: false),
                  GestureDetector(
                    onTap: () {
                      controller.signup();
                      // Get.to(HomePage());
                      // Navigator.of(context).push(
                      //     MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                        color: AppColor.grenn,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Sign up ',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomDivider(
                    text2: '  Or sign up with  ',
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 18, left: 135),
                      child: Row(children: [
                        CustomImages(textimage: 'assets/images/google.png'),
                        SizedBox(
                          width: 70,
                        ),
                        CustomImages(textimage: 'assets/images/facebook.png'),
                      ]),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => SignIn()));
                      },
                      child: Text('Sign In')),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
