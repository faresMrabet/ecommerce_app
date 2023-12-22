import 'package:ecommerce_app/config/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class InputTextPassword extends StatelessWidget {
  final Function? function;
  final TextEditingController? controller;
  final bool obscuretexte;
  final String? nameText;
  final String? hint;
  final IconData? iconData;
  final IconData? iconData2;
  String? Function(String?)? validator;

  InputTextPassword(
      {super.key,
      this.nameText,
      this.hint,
      this.function,
      this.iconData,
      this.iconData2,
      required this.obscuretexte,
      this.controller,
      this.validator});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(iconData!),
          suffixIcon: IconButton(
            icon: Icon(iconData2!),
            onPressed: () {
              function!();
            },
          ),
          label: Text(
            nameText!,
            style: TextStyle(
                color: AppColor.grenn, fontSize: 20, fontFamily: 'italic'),
          ),
          hintText: hint!,
          hintMaxLines: 2,
          hintStyle: TextStyle(
              color: Colors.grey[400], fontSize: 20, fontFamily: 'italic'),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        ),
        obscureText: obscuretexte,
        controller: controller,
        validator: validator,
      ),
    );
  }
}
