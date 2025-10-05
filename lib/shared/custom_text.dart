import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.text, this.color=Colors.black, this.fontWeight=FontWeight.bold,  this.fontSize=13,  this.maxLines=1,  this.overFlow=TextOverflow.visible });
  final String text;
  final Color? color;
 final  FontWeight? fontWeight;
 final double? fontSize;
 final int? maxLines;
 final TextOverflow? overFlow;

  @override
  Widget build(BuildContext context) {
    return  Text(
     text,
     maxLines: maxLines,
     style: TextStyle(
      fontWeight: fontWeight,
      color: color,
      fontSize: fontSize,
    overflow:overFlow,
      
     ),

    );
  }
}