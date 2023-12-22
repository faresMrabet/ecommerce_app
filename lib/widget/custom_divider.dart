import 'package:ecommerce_app/config/app_color.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  final String? text2;

  const CustomDivider({super.key, this.text2});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, top: 15, bottom: 15),
      child: Row(
        children: [
          Container(
            width: 120,
            decoration: BoxDecoration(
                border: Border.all(width: 1.5, color: AppColor.grenn)),
          ),
          Text(
            text2!,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          Container(
            width: 120,
            decoration: BoxDecoration(
                border: Border.all(width: 1.5, color: AppColor.grenn)),
          ),
        ],
      ),
    );
  }
}
