import 'package:ecommerce_app/config/app_color.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final IconData? icon;
  final String? text;
  final Function? function;

  const CustomContainer({super.key, this.icon, this.text, this.function});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        function!();
      },
      child: Container(
        padding: EdgeInsets.all(20),
        width: 320,
        height: 60,
        decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: AppColor.grenn, width: 1)),
        child: Row(
          children: [
            Icon(
              icon!,
              size: 20,
              color: Colors.white,
            ),
            SizedBox(width: 20),
            Text(text!),
          ],
        ),
      ),
    );
  }
}
