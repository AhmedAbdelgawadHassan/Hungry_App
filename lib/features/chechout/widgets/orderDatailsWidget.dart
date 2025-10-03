import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:hungry/features/cart/widgets/checkout_text.dart';
import 'package:hungry/shared/custom_text.dart';

class Orderdatailswidget extends StatelessWidget {
  const Orderdatailswidget({super.key, required this.order, required this.taxes, required this.fees, required this.total});
    final String order,taxes,fees,total;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         CustomText(
              text: 'Order Summary',
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
            Gap(20),
            CheckoutText(title: 'Order', price: '$order'),
            Gap(10),
            CheckoutText(title: 'Taxes', price: '$taxes'),
            Gap(10),
            CheckoutText(title: 'Delivery fees', price: '$fees'),
            Gap(10),
            Divider(color: Colors.grey),
            Gap(10),
            CheckoutText(
              title: 'Total',
              price: '$total',
              isBold: true,
              isBlack: true,
            ),
            Gap(10),
            CheckoutText(
              title: 'Estimated delivery time:',
              price: '15 - 30 mins',
              isBold: true,
              isBlack: true,
              isSmall: true,
            )
      ],
    );
  }
}