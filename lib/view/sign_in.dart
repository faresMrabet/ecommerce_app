import 'package:ecommerce_app/config/app_color.dart';
import 'package:ecommerce_app/controlleur/profile_controlleur.dart';
import 'package:ecommerce_app/view/home_page.dart';
import 'package:ecommerce_app/widget/custom_divider.dart';
import 'package:ecommerce_app/widget/custom_images.dart';
import 'package:ecommerce_app/widget/input_text.dart';
import 'package:ecommerce_app/widget/input_text_password.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignIn extends GetView<ProfileControlleur> {
  // TextEditingController controller = TextEditingController();

  String name = '';
  GlobalKey<FormState> formkey = GlobalKey();

  // ProfileControlleur profilecontr = Get.put(ProfileControlleur());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Expanded(
              child: Form(
                key: formkey,
                child: Column(
                  children: [
                    const Image(image: AssetImage('assets/images/logo.png')),
                    const Text(
                      'Login to Your Account ',
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
                      nameText: 'email',
                      hint: 'enter your email,',
                      controller: controller.nameControlleur,
                      iconData: Icons.email,
                      obscuretexte: false,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'is null !!!';
                        }
                        if (value!.length < 3) {
                          return '>>>>3';
                        }
                      },
                    ),
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
                        obscuretexte: controller.isVisiblePassword,
                        validator: (Value) {
                          if (Value!.isEmpty) {
                            return 'is null !!';
                          }
                          if (Value!.length < 6) {
                            return '>>>>6';
                          }
                        },
                      );
                    }),
                    TextFormField(
                      decoration: InputDecoration(
                        label: Text('name'),
                      ),
                      validator: (value) {
                        if (value!.isEmpty /* is null*/) {
                          return 'enter name';
                        }
                        if (value.length < 3) {
                          return 'name >3';
                        }
                      },
                    ),
                    // TextFormField(
                    //   decoration:
                    //       InputDecoration(label: Text('name'), hintText: 'nk;'),
                    //   controller: controller,
                    //   onChanged: (value) {
                    //     print('value : $value');
                    //     setState(() {
                    //       name = value;
                    //     });
                    //   },
                    // ),
                    // TextFormField(
                    //   decoration: InputDecoration(
                    //       label: Text('username'), hintText: 'nk;'),
                    //   controller: controller,
                    //   onChanged: (value) {
                    //     print('value : $value');
                    //     setState(() {
                    //       name = value;
                    //     });
                    //   },
                    // ),
                    // Text('name : $name'),
                    // TextFormField(
                    //   dec
                    // )
                    GestureDetector(
                      onTap: () {
                        // print('name : $controller');
                        // print('name : ${controller.text}');
                        if (formkey.currentState!.validate()) {
                          controller.login();
                        }
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
                              'Sign In ',
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
                      text2: ' Or continue with ',
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
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
