import 'package:flutter/material.dart';
import 'package:fruit_hub/core/functions/navigator.dart';
import 'package:fruit_hub/core/text/app_text.dart';
import 'package:fruit_hub/core/utils/color/colors.dart';
import 'package:fruit_hub/core/widgets/main_button.dart';
import 'package:fruit_hub/features/basket/pages/basket_screen.dart';
import 'package:fruit_hub/features/home/models/recommended_product.dart';
import 'package:gap/gap.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key, required this.model});

  final RecommendedProduct model;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      pop(context);
                    },
                    child: Container(
                      width: 90,
                      height: 40,
                      decoration: BoxDecoration(color: AppColors.whiteColor, borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          children: [
                            Icon(Icons.arrow_back_ios, size: 20),
                            Text('Go back', style: TextStyles.titleStyle(color: AppColors.darkColor, fontSize: 16)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: Center(child: Image.asset(widget.model.image, height: 180, width: 180, fit: BoxFit.cover)),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 350,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 40, right: 24, left: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.model.name, style: TextStyles.titleStyle(color: AppColors.darkColor, fontSize: 32)),
                    Gap(30),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              if (count > 1) {
                                count--;
                              }
                            });
                          },
                          icon: Icon(Icons.remove_circle_outline, color: Color(0xFF333333), size: 30),
                        ),
                        Gap(10),
                        Text(count.toString(), style: TextStyles.titleStyle(fontSize: 24)),
                        Gap(10),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                style: IconButton.styleFrom(padding: EdgeInsets.all(4), backgroundColor: AppColors.pinkColor, shape: CircleBorder(), iconSize: 22),
                                onPressed: () {
                                  setState(() {
                                    count++;
                                  });
                                },
                                icon: Icon(Icons.add, color: AppColors.primaryColor),
                              ),
                              Text('\$ ${widget.model.price * count}', style: TextStyles.titleStyle(fontSize: 24)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Gap(24),
                    Divider(),
                    Gap(24),
                    Text('One Pack Contains:', style: TextStyles.titleStyle(fontSize: 20)),
                    Divider(color: AppColors.primaryColor, endIndent: 200, thickness: 3),
                    Gap(24),
                    Text(widget.model.describtion ?? '', style: TextStyles.titleStyle(color: AppColors.darkColor, fontSize: 16)),
                    Gap(24),
                    Divider(),
                    Gap(24),
                    Text('If you are looking for a new fruit salad to eat today,\n${widget.model.name} is the perfect brunch for you. make'),
                    Gap(35),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite_border, color: AppColors.primaryColor, size: 35),
                        ),
                        MainButton(
                          title: 'Add to basket',
                          width: 219,
                          onPressed: () {
                            setState(() {
                              pushTo(context, BasketScreen());
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
