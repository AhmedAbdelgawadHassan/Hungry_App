import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/features/home/widgets/cardItem.dart';
import 'package:hungry/shared/custom_text.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<String> categories = ['All', 'Combo', 'Sliders', 'Classic'];
  int seletedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Gap(65),
                    Row(
                      children: [
                        Column(
                          children: [
                            SvgPicture.asset(
                              'assets/logo/Hungry_.svg',
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
                          radius: 35,
                          // backgroundImage: AssetImage(''),
                        ),
                      ],
                    ),
                    Gap(30),
                    Material(
                      elevation: 2,
                      shadowColor: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(15),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey.shade100,
                          prefixIcon: Icon(
                            CupertinoIcons.search,
                            color: Colors.black,
                            size: 30,
                          ),
                          hintText: 'Search for food',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    Gap(20),
                    SizedBox(
                      height: 50,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: categories.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () => setState(() {
                              seletedIndex = index;
                            }),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 30,
                                vertical: 15,
                              ),
                              margin: EdgeInsets.only(right: 20),
                              decoration: BoxDecoration(
                                color: seletedIndex == index
                                    ? AppColors.primaryColor
                                    : Color(0xffF0F1F3),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: CustomText(
                                text: categories[index],
                                color: seletedIndex == index
                                    ? Color(0xffF0F1F3)
                                    : Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Gap(30),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: GridView.builder(
                  padding: EdgeInsets.only(bottom: 20),
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 12,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 10,
                    childAspectRatio: 0.71,
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) {
                    return Carditem(
                      text: 'BurgerKing',
                      descrption: 'Eahmed else imad',
                      rating: '4.6',
                      image: 'assets/image 6.png',
                    );
                  }
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
