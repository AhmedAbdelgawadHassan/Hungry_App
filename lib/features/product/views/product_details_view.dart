import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/features/product/widgets/spicy_slider.dart';
import 'package:hungry/features/product/widgets/topping_card.dart';
import 'package:hungry/shared/customButton.dart';
import 'package:hungry/shared/custom_text.dart';


class ProductDetailsView extends StatefulWidget {
  const ProductDetailsView({super.key});

  @override
  State<ProductDetailsView> createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  double v=120;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           SpicySlider(
            value: v,
             onChanged: (value) {
               setState(() {
              v=value;
                // print(v);
               });
             },
             ),
             Gap(50),
             CustomText(text: 'Toppins',fontSize: 20,fontWeight: FontWeight.w600,),
             Gap(20),
           SizedBox(
            height: 150,
             child: ListView.builder(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              itemCount: 6, 
              itemBuilder: (context, index) {
                 return Padding(
                  padding: EdgeInsetsGeometry.only(right: 20),
                   child: ToppingCard(
                                 title: 'Tomate',
                                  imageUrl: 'assets/test/Group31.png',
                                   onTap: (){}),
                 );
              },),
           ),
           Gap(50),
             CustomText(text: 'Side options',fontSize: 20,fontWeight: FontWeight.w600,),
             Gap(20),
           SizedBox(
            height: 150,
             child: ListView.builder(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              itemCount: 6, 
              itemBuilder: (context, index) {
                 return Padding(
                  padding: EdgeInsetsGeometry.only(right: 20),
                   child: ToppingCard(
                                 title: 'Tomate',
                                  imageUrl: 'assets/test/Group31.png',
                                   onTap: (){}),
                 );
              },),
           ), 
           Spacer(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                children: [
                  CustomText(text: "Total",fontSize: 18,color: Color(0xff3B2E2E),),
                  CustomText(text: "\$18.19",fontSize: 30,),
                ],
              ),
              Spacer(),
             Custombutton(
              ontap: () {},
              text: 'Add To Cart',
             )
            ],
          )
        
        
        
        
          ],
        ),
      ),
    );
  }}
  
