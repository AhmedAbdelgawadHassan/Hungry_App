import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/features/chechout/widgets/orderDatailsWidget.dart';
import 'package:hungry/shared/customButton.dart';
import 'package:hungry/shared/custom_text.dart';

class CheckoutView extends StatefulWidget {
  const CheckoutView({super.key});

  @override
  State<CheckoutView> createState() => _CheckoutViewState();
}

class _CheckoutViewState extends State<CheckoutView> {
   String selectedMethod='cash';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Orderdatailswidget(
              order: '12.5 \$',
              taxes: '0.4 \$',
              fees: '2.5 \$',
              total: '26.5 \$',
            ),
            Gap(80),
            CustomText(
              text: 'Payment Methods',
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
            Gap(20),

            //// cash
            ListTile(
               onTap: () {
                  setState(() {
                    selectedMethod='cash';
                  });
                },
              contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(8)
              ),
              tileColor: Color(0xff3B2F2F),
              leading: Image(image: AssetImage('assets/icons/dollar Background Removed 1.png'),width: 50,),
              title: Text("Cash On Delivery",style: TextStyle(color: Colors.white),),
              trailing: Radio<String>(
                activeColor: Colors.white,
                value: 'cash',
                groupValue: selectedMethod,
                onChanged: (v) {
                  setState(() {
                     selectedMethod=v!;
                  });
                },
                  ),
            ),
            Gap(30),

            /// Visa
               ListTile(
                onTap: () {   //when clicking on all ListTile
                  setState(() {
                    selectedMethod='visa';
                  });
                },
              contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(8)
              ),
              tileColor: const Color.fromARGB(255, 0, 65, 162),
              leading: Image(image: AssetImage('assets/icons/image 13 (4).png',),width: 50,),
              title: Text("Debit card",style: TextStyle(color: Colors.white),),
              subtitle: Text('**** **** **** 0505',style: TextStyle(color: Colors.grey),),
                trailing: Radio<String>(
                activeColor: Colors.white,
                value: 'visa',
                groupValue: selectedMethod,
                onChanged: (v) {
                  setState(() {
                    setState(() {
                      selectedMethod=v!;
                    });
                  });
                },
                  ),
            ),
            Gap(10),
            Row(
              children: [
                
                Checkbox(
                  activeColor: Colors.red,
                  value: true, onChanged: (value) {

                  
                },),
                CustomText(text: 'Save card details for future payments',),
              ],
            ),
            Spacer(),
             Row(
            children: [
              Column(
                children: [
                  CustomText(text: "Total price",fontSize: 18,color: Color(0xff3B2E2E),),
                  CustomText(text: "\$18.19",fontSize: 30,),
                ],
              ),
              Spacer(),
             Custombutton(
              ontap: () {

                showDialog(
                  context: context,
                   builder: (context) {
                     return Dialog(
                      elevation: 0,
                      backgroundColor: Colors.transparent,
                       child: Container(
                        padding: EdgeInsets.only(top: 40),
                        margin: EdgeInsets.symmetric(horizontal: 5,vertical: 200),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)
                        ),
                         child: Column(
                          children: [
                            CircleAvatar(
                              radius: 50,
                              backgroundColor: AppColors.primaryColor,
                              child: Icon(CupertinoIcons.check_mark,color: Colors.white,),
                            ),
                            Gap(10),
                            CustomText(text: 'Success',fontSize: 22,fontWeight: FontWeight.bold,color: AppColors.primaryColor,),
                            Gap(10),
                            CustomText(text: 'Your payment was successful.\nA receipt for this purchase has\n been sent to your email.',fontWeight: FontWeight.w700,color: Colors.grey.shade800,),
                           Spacer(),
                            Custombutton(text: 'Go Back', ontap: (){
                              Navigator.pop(context);
                            },width: 130,),
                            Gap(20)
                            
                          ],
                         ),
                       ),
                     );
                   },
                   );
              },
              text: 'Pay Now',
             )
            ],
          ),
          ],
        ),
      ),
    );
  }
}
