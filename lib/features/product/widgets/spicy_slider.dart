import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/shared/custom_text.dart';

class SpicySlider extends StatelessWidget {
  const SpicySlider({super.key, required this.value, required this.onChanged});
  final double value;
  final ValueChanged<double> onChanged;

  @override
  Widget build(BuildContext context) {
    return             Row(
              children: [
               
                Image.asset('assets/test/pngwing 12 (1).png'),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(text:'Customize Your Burger\n to Your Tastes. Ultimate\n Experience',fontSize: 14,fontWeight: FontWeight.w600, ),
                    Gap(20),
                    CustomText(text: 'Spicy',fontSize: 16,),
                    Slider(
                      
                      value: value, 
                      inactiveColor: Colors.grey.shade300,
                      activeColor: AppColors.primaryColor,
                    onChanged: onChanged,
                    max: 300,min: 100,),
                    Row(
                      children: [
                        // Text('🥶'),
                        // Spacer(),
                        // Text('🌶️')
                      ],
                    )
                    
                  ],
                )
              ],
            );
  }
}