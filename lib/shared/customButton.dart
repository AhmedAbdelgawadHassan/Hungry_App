import 'package:flutter/material.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/shared/custom_text.dart';

class Custombutton extends StatelessWidget {
  const Custombutton({super.key, required this.text, required this.ontap,  this.width, this.color});
  final String text;
  final VoidCallback ontap;
  final double? width;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: ontap,
      child: Container(
        alignment: Alignment.center,
        width: width,
                    padding: EdgeInsets.symmetric(vertical: 15,horizontal: 25
                    ),
                    decoration: BoxDecoration(
                      color:color?? AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: CustomText(text: text,color: Colors.white,),
                  ),
    );
  }
}