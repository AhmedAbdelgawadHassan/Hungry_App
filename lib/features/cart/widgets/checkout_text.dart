import 'package:flutter/material.dart';
import 'package:hungry/shared/custom_text.dart';

class CheckoutText extends StatelessWidget {
  const CheckoutText({
    super.key,
    required this.title,
    required this.price,
    this.isBold,
    this.isBlack, this.isSmall,
  });
  final String title;
  final String price;
  final bool? isBold;
  final bool? isBlack;
  final bool? isSmall;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
          text: title,
          fontWeight: isBold == true ? FontWeight.bold : FontWeight.w400,
          color:isBlack==true?Colors.black: Colors.grey.shade600,
          fontSize: isSmall==true?10: 15,
        ),
        CustomText(
          text: price,
          fontWeight: isBold == true ? FontWeight.bold : FontWeight.w400,
          color:isBlack==true ?Colors.black: Colors.grey.shade600,
          fontSize:  isSmall==true?10: 15,
        ),
      ],
    );
  }
}
