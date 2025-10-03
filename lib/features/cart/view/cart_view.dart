import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/features/cart/widgets/cart_item.dart';
import 'package:hungry/features/chechout/views/checkout_view.dart';
import 'package:hungry/shared/customButton.dart';
import 'package:hungry/shared/custom_text.dart';

class CartView extends StatefulWidget {
   CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  //// to make each cartItem alone while + or - order 
  int itemCount=20;
  late List<int> quantities;




  void onAdd(index)    // تستقبل الانديكس 
  {
  setState(() {
     quantities[index]++;
  });
  }

  void onMinus(index)
  {
    setState(() {
     if(quantities[index]>1)
     {
      quantities[index]--;
     }
    });
  }


@override
  void initState() {
    quantities=List.generate(itemCount,(_)=>1);
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: Column(
          children: [
            Gap(40),
           Expanded(
             child: ListView.builder(
              itemCount: itemCount,
              itemBuilder: (context, index) {
               return  CartItem(
                number:quantities[index],
                image: 'assets/test/image6.png',
                text: 'Hamburger',
                description: 'Veggie Burger',
                onAdd: () {
                  onAdd(index);   
                },
                onMinus: () {
                  onMinus(index);
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
              ontap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CheckoutView();
                },));
              },
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
