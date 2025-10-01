import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/features/cart/widgets/cart_item.dart';
import 'package:hungry/shared/customButton.dart';
import 'package:hungry/shared/custom_text.dart';

class CartView extends StatefulWidget {
   CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  int number=1;

  void onAdd()
  {
  setState(() {
     number++;
  });
  }

  void onMinus()
  {
    setState(() {
     if(number>1)
     {
      number--;
     }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: Column(
          children: [
            Gap(40),
           Expanded(
             child: ListView.builder(
              itemCount: 8,
              itemBuilder: (context, index) {
               return  CartItem(
                number:number,
                image: 'assets/test/image6.png',
                text: 'Hamburger',
                description: 'Veggie Burger',
                onAdd: () {
                  onAdd();   
                },
                onMinus: () {
                  onMinus();
                },
                onRemove: () {},
              );
             },),
           ),
           Gap(10),
            Row(
            children: [
              Column(
                children: [
                  CustomText(text: "Total",fontSize: 18,color: Color(0xff3B2E2E),),
                  CustomText(text: "\$99.19",fontSize: 30,),
                ],
              ),
              Spacer(),
             Custombutton(
              ontap: () {},
              text: 'Checkout',
             )
            ],
          )
          ],
        ),
      ),
    );
  }
}
