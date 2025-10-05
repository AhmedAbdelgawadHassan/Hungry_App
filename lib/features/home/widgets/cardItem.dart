import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/shared/custom_text.dart';

class Carditem extends StatelessWidget {
  const Carditem({super.key, required this.text, required this.descrption, required this.rating, required this.image,});
  final String image;
  final String text;
  final String  descrption;
  final String rating;

  @override
  Widget build(BuildContext context) {
    return   Card(
              color: Colors.white,
              shadowColor: Colors.grey.shade600,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 15),
                child: Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Center(child: FittedBox(child: Image(image: AssetImage(image),height: 120,width: 120,))),
                      Gap(10),
                     FittedBox(child: CustomText(text:text,fontWeight: FontWeight.w600,fontSize: 16,color: Colors.black,maxLines: 1,overFlow: TextOverflow.ellipsis )),
                     FittedBox(child: CustomText(text: descrption,fontSize: 15,color: Colors.grey.shade600,maxLines: 1,overFlow: TextOverflow.ellipsis ,)),
                      Gap(10),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(CupertinoIcons.star_fill,color: Colors.amber,size: 18,),
                          Gap(5),
                          CustomText(text: rating,fontSize: 15,color: Colors.black,),
                          Spacer(),
                          Icon(CupertinoIcons.heart_fill,color: AppColors.primaryColor,)
                        ],
                      )
                    ],
                  ),
                ),
              ),
             );
  }
}