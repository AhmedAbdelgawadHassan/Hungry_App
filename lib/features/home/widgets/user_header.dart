import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/shared/custom_text.dart';

class UserHeader extends StatelessWidget {
  const UserHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
                      children: [
                        Column(
                          children: [
                            SvgPicture.asset(
                              'assets/logo/Hungry.svg',
                              color: AppColors.primaryColor,
                              height: 35,
                              width: 35,
                            ),
                            Gap(5),
                            CustomText(
                              text: "Hello, 3abGwad's Fast Food",
                              color: Colors.grey.shade700,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                        Spacer(),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: AppColors.primaryColor,
                          child: Icon(CupertinoIcons.person, size: 30, color: Colors.white,),
                         
                        ),
                      ],
                    );
  }
}