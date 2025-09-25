import 'package:flutter/material.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/shared/custom_text.dart';

class Customauthbutton extends StatelessWidget {
  const Customauthbutton({super.key,required this.ontap, required this.text});
  final VoidCallback? ontap;
  final String text ;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
                      onTap: ontap,
                      child: Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: CustomText(
                          text: text,
                          color: AppColors.primaryColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    );
  }
}