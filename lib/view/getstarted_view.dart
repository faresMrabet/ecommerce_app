import 'package:ecommerce_app/view/home_page.dart';
import 'package:ecommerce_app/view/sign_up.dart';
import 'package:ecommerce_app/widget/custom_container.dart';
import 'package:ecommerce_app/widget/custom_divider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class GetstartedView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: const Image(image: AssetImage('assets/images/logo.png')),
        ),
        CustomContainer(
          icon: Icons.email,
          text: 'Continue with google',
          function: () {
            // Navigator.of(context)
            //     .push(MaterialPageRoute(builder: (context) => HomePage()));
          },
        ),
        const SizedBox(height: 23),
        CustomContainer(
          icon: Icons.facebook,
          text: 'Continue with facebook',
          function: () {
            // Navigator.of(context)
            //     .push(MaterialPageRoute(builder: (context) => HomePage()));
          },
        ),
        const CustomDivider(
          text2: '  Or  ',
        ),
        CustomContainer(
          icon: Icons.password,
          text: 'Sign in with Password',
          function: () {
            Get.to(SignUp());
            // Navigator.of(context)
            //     .push(MaterialPageRoute(builder: (context) => SignUp()));
          },
        ),
        // RichText(
        //   text: TextSpan(
        //     text: 'dont have an account ',
        //     style: DefaultTextStyle.of(context).style,
        //     children: const <TextSpan>[
        //       TextSpan(
        //           text: 'sign up',
        //           style: TextStyle(fontWeight: FontWeight.bold)),
        //     ],
        //   ),
        // )
      ]),
    );
  }
}
