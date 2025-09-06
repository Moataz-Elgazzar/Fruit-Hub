import 'package:flutter/material.dart';
import 'package:fruit_hub/core/text/app_text.dart';
import 'package:fruit_hub/core/utils/color/colors.dart';
import 'package:fruit_hub/core/widgets/custome_text_field.dart';
import 'package:fruit_hub/features/home/models/product_data.dart';
import 'package:fruit_hub/features/home/models/recommended_product.dart';
import 'package:fruit_hub/features/home/widgets/product_list.dart';
import 'package:fruit_hub/features/home/widgets/recommended_card.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(26),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu, color: AppColors.darkColor, size: 35),
                    Column(
                      children: [
                        Icon(Icons.shopping_basket, color: AppColors.primaryColor, size: 35),
                        Text('My basket', style: TextStyles.smallStyle(color: AppColors.darkColor)),
                      ],
                    ),
                  ],
                ),
                Gap(20),
                Text('Hello Tony, What fruit salad\ncombo do you want today?', style: TextStyles.titleStyle(color: AppColors.darkColor, fontSize: 20)),
                Gap(20),
                Row(
                  spacing: 16,
                  children: [
                    Expanded(
                      child: CustomeTextField(
                        prefixIcon: Icon(Icons.search, color: AppColors.subTitleColor),
                        hintText: 'Search for fruit salad combos',
                      ),
                    ),
                    Icon(Icons.tune, color: AppColors.darkColor, size: 35),
                  ],
                ),
                Gap(40),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Recommended Combo', style: TextStyles.titleStyle(fontSize: 24)),
                        Gap(20),
                        SizedBox(
                          height: 248,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return RecommendedCard(model: product[index]);
                            },
                            separatorBuilder: (context, index) {
                              return SizedBox(width: 10);
                            },
                            itemCount: product.length,
                          ),
                        ),
                        Gap(20),
                        TabBar(
                          tabs: const [
                            Tab(text: "Hottest"),
                            Tab(text: "Popular"),
                            Tab(text: "New combo"),
                            Tab(text: "Top"),
                          ],
                          isScrollable: true,
                          tabAlignment: TabAlignment.start,
                          labelColor: AppColors.darkColor,
                          unselectedLabelColor: AppColors.subTitleColor,
                          labelStyle: TextStyles.titleStyle(fontSize: 24, color: AppColors.darkColor),
                          unselectedLabelStyle: TextStyles.subtitleStyle(color: AppColors.subTitleColor, fontSize: 16),
                          indicator: const UnderlineTabIndicator(
                            borderSide: BorderSide(width: 2, color: AppColors.primaryColor),
                            insets: EdgeInsets.only(right: 20),
                          ),
                          dividerColor: Colors.transparent,
                        ),
                        Gap(20),
                        SizedBox(
                          height: 250,
                          child: TabBarView(
                            physics: NeverScrollableScrollPhysics(),
                            children: [
                              ProductList(products: hottestProducts),
                              ProductList(products: popularProducts),
                              ProductList(products: newComboProducts),
                              ProductList(products: topProducts),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
