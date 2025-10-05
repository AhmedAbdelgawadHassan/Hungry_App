import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/shared/customButton.dart';
import 'package:hungry/shared/custom_text.dart';

class OrderhistoryView extends StatefulWidget {
  const OrderhistoryView({super.key});

  @override
  State<OrderhistoryView> createState() => _OrderhistoryViewState();
}

class _OrderhistoryViewState extends State<OrderhistoryView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 60,left: 20,right: 20),
        child: ListView.builder(
          itemCount: 4,
          padding: EdgeInsets.only(bottom: 120, top: 10),
          itemBuilder: (context, index) {
            return Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/test/image6.png', width: 100),
                        Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(text: 'Hamburger Hamburger', fontSize: 16),
                            CustomText(text: 'Qty : x3',fontWeight: FontWeight.w700,fontSize: 13,),
                            CustomText(text: 'Price : 20\$',fontWeight: FontWeight.w900,fontSize: 13,),
                          ],
                        ),
                      
                      ],
                    ),
                    Gap(20),
                    Custombutton(text: 'Order Again', ontap: (){},width:300,color: Colors.grey.shade400,)
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
