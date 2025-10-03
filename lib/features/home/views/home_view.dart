import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/features/home/widgets/cardItem.dart';
import 'package:hungry/features/home/widgets/category_food.dart';
import 'package:hungry/features/home/widgets/searchField.dart';
import 'package:hungry/features/home/widgets/user_header.dart';
import 'package:hungry/features/product/views/product_details_view.dart';

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
                      seletedIndex: seletedIndex,
                    ),
                    Gap(30),
                  ],
                ),
              ),
             
              SliverGrid(
                delegate: SliverChildBuilderDelegate(childCount: 8,(context, index) => GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return ProductDetailsView();
                            },
                          ),
                        );
                      },
                      child: Carditem(
                        text: 'BurgerKing',
                        descrption: 'Eahmed else imad',
                        rating: '4.6',
                        // image: 'assets/test/image6.png',
                        image:''
                      ),
                    )),
                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:2 ,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 10,
                    childAspectRatio: 0.71,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
