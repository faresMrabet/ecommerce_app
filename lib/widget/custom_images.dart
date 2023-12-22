import 'package:flutter/material.dart';

class CustomImages extends StatelessWidget {
  final String? textimage;

  const CustomImages({super.key, this.textimage});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: CircleAvatar(
        child: Image(
          image: AssetImage(textimage!),
        ),
      ),
    );
  }
}
