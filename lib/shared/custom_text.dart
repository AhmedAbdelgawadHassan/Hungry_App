import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.text, this.color=Colors.white, this.fontWeight=FontWeight.bold,  this.fontSize=13});
  final String text;
  final Color? color;
 final  FontWeight? fontWeight;
 final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return  Text(
     text,
     style: TextStyle(
      fontWeight: fontWeight,
      color: color,
      fontSize: fontSize
     ),

    );
  }
}