import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/features/home/widgets/cardItem.dart';
import 'package:hungry/features/home/widgets/category_food.dart';
import 'package:hungry/features/home/widgets/searchField.dart';
import 'package:hungry/features/home/widgets/user_header.dart';

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
                    UserHeader(),
                    Gap(30),
                   Searchfield(),
                    Gap(20),
                    CategoryFood(
                      categories: categories,
                      seletedIndex: seletedIndex
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
