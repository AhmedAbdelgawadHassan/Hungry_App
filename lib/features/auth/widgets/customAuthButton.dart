import 'package:flutter/material.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/shared/custom_text.dart';

class Customauthbutton extends StatelessWidget {
  const Customauthbutton({
    super.key,
    required this.ontap,
    required this.text,
    this.borderColor = Colors.black, 
    this.textFieldColor=Colors.white,
    this.textColor=AppColors.primaryColor,
  });
  final VoidCallback? ontap;
  final String text;
  final Color borderColor;
  final Color textFieldColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: textFieldColor,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: borderColor),
        ),
        child: CustomText(
          text: text,
          color: textColor,
          fontSize: 20,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}
