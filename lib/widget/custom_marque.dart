import 'package:ecommerce_app/config/app_color.dart';
import 'package:flutter/material.dart';

class CustomMarque extends StatelessWidget {
  final String? marque2;
  final String? marque;

  const CustomMarque({super.key, this.marque, this.marque2});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15, top: 15, bottom: 9),
      child: GestureDetector(
          onTap: () {
            //
          },
          child: Column(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(marque2!)),
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: AppColor.grenn, width: 0.5)),
              ),
              Text(
                marque!,
                style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'italic',
                    fontWeight: FontWeight.bold,
                    color: Colors.black45),
              ),
            ],
          )),
    );
  }
}
