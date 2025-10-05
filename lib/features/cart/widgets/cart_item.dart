import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/shared/custom_text.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, required this.image, required this.text, required this.description, required this.onAdd, required this.onMinus, required this.onRemove, required this.number});
  final String image;
  final String text;
  final String description;
  final VoidCallback onAdd;
  final VoidCallback onMinus;
  final VoidCallback onRemove;
  final int number;


  @override
  Widget build(BuildContext context) {
    return Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      children: [
                        FittedBox(child: Image(image: AssetImage(image),height: 100,width: 110,)),
                        CustomText(text: text,fontSize: 16,),
                        CustomText(text: description,fontWeight: FontWeight.w500,fontSize: 13,),
                      ],
                    ),
                    Gap(50),
                   Column(
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: onMinus,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                              decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius: BorderRadius.circular(8)
                              ),
                              child: Icon(CupertinoIcons.minus,color: Colors.white,),
                            ),
                          ),
                          Gap(20),
                            CustomText(text: number.toString(),fontSize: 17,),
                            Gap(20),
                            GestureDetector(
                              onTap: onAdd,
                              child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                              decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius: BorderRadius.circular(8)
                              ),
                              child: Icon(CupertinoIcons.add,color: Colors.white,),
                              ),
                            ),
                        ],
                      ),
                      Gap(30),
                     GestureDetector(
                      onTap: onRemove,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 30,vertical: 5),
                        decoration: BoxDecoration(
                          color:AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(25)
                        ),
                        child: Center(
                          child: CustomText(text: 'Remove',color: Colors.white,),
                        ),
                      ),
                      )
                    ],
                   )
                  ],
                ),
              )
            );
  }
}

