// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/shared/custom_text.dart';

class CategoryFood extends StatefulWidget {
   CategoryFood({super.key, required this.categories, required this.seletedIndex});
    List<String> categories ;
   int seletedIndex ;

  @override
  State<CategoryFood> createState() => _CategoryFoodState();
}

class _CategoryFoodState extends State<CategoryFood> {
  @override
  Widget build(BuildContext context) {
    
    
    return   SizedBox(
                      height: 50,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: widget.categories.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () => setState(() {
                             widget.seletedIndex =index;
                            }),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 30,
                                vertical: 15,
                              ),
                              margin: EdgeInsets.only(right: 20),
                              decoration: BoxDecoration(
                                color: widget.seletedIndex == index
                                    ? AppColors.primaryColor
                                    : Color(0xffF0F1F3),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: CustomText(
                                text: widget.categories[index],
                                color: widget.seletedIndex == index
                                    ? Color(0xffF0F1F3)
                                    : Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          );
                        },
                      ),
                    );
  }
}