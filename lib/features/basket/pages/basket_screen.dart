import 'package:flutter/material.dart';
import 'package:fruit_hub/core/constants/app_images.dart';
import 'package:fruit_hub/core/functions/navigator.dart';
import 'package:fruit_hub/core/text/app_text.dart';
import 'package:fruit_hub/core/utils/color/colors.dart';
import 'package:fruit_hub/core/widgets/custome_text_field.dart';
import 'package:fruit_hub/core/widgets/main_button.dart';
import 'package:fruit_hub/features/complete_order/pages/complete_order.dart';
import 'package:gap/gap.dart';

class BasketScreen extends StatelessWidget {
  const BasketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 170,
            decoration: BoxDecoration(color: AppColors.primaryColor),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
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
                    Gap(35),
                    Text('My Basket', style: TextStyles.titleStyle(fontSize: 24, color: AppColors.whiteColor)),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Row(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(color: AppColors.pinkColor, borderRadius: BorderRadius.circular(15)),
                  child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Image.asset(AppImages.quinoa, width: 50, height: 50)]),
                ),
                Gap(30),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Quinoa fruit salad', style: TextStyles.subtitleStyle(color: AppColors.darkColor, fontSize: 18)),
                          Text('2packs', style: TextStyles.smallStyle(color: AppColors.darkColor, fontSize: 16)),
                        ],
                      ),
                      Text('\$ 10', style: TextStyles.subtitleStyle(color: AppColors.darkColor, fontSize: 18)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Row(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(color: AppColors.greyColor, borderRadius: BorderRadius.circular(15)),
                  child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Image.asset(AppImages.melonFruit, width: 50, height: 50)]),
                ),
                Gap(30),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Melon fruit salad', style: TextStyles.subtitleStyle(color: AppColors.darkColor, fontSize: 18)),
                          Text('2packs', style: TextStyles.smallStyle(color: AppColors.darkColor, fontSize: 16)),
                        ],
                      ),
                      Text('\$ 10', style: TextStyles.subtitleStyle(color: AppColors.darkColor, fontSize: 18)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Row(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(color: AppColors.pinkColor, borderRadius: BorderRadius.circular(15)),
                  child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Image.asset(AppImages.tropical, width: 50, height: 50)]),
                ),
                Gap(30),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Tropical fruit salad', style: TextStyles.subtitleStyle(color: AppColors.darkColor, fontSize: 18)),
                          Text('2packs', style: TextStyles.smallStyle(color: AppColors.darkColor, fontSize: 16)),
                        ],
                      ),
                      Text('\$ 10', style: TextStyles.subtitleStyle(color: AppColors.darkColor, fontSize: 18)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, top: 250),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('Total', style: TextStyles.titleStyle(fontSize: 20)),
                    Text('\$ 30', style: TextStyles.titleStyle(fontSize: 24)),
                  ],
                ),
                MainButton(
                  width: 250,
                  height: 60,
                  title: 'Checkout',
                  onPressed: () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (context) => Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                            child: Container(
                              height: 450,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: AppColors.whiteColor,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(24), topRight: Radius.circular(24)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Delivery address', style: TextStyles.titleStyle(fontSize: 25)),
                                    Gap(15),
                                    CustomeTextField(
                                      hintText: '10th avenue, Lekki, Lagos State',
                                      hintStyle: TextStyles.titleStyle(fontSize: 20, color: Color(0xFFC2BDBD)),
                                    ),
                                    Gap(24),
                                    Text('Number we can call', style: TextStyles.titleStyle(fontSize: 25)),
                                    Gap(15),
                                    CustomeTextField(
                                      hintText: '09090605708',
                                      hintStyle: TextStyles.titleStyle(fontSize: 20, color: Color(0xFFC2BDBD)),
                                    ),
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          MainButton(
                                            width: 170,
                                            title: 'Pay on delivery',
                                            onPressed: () {},
                                            color: AppColors.whiteColor,
                                            side: BorderSide(color: AppColors.primaryColor),
                                            colorText: AppColors.primaryColor,
                                          ),
                                          Gap(10),
                                          MainButton(
                                            width: 170,
                                            title: 'Pay with card',
                                            onPressed: () {
                                              showModalBottomSheet(
                                                useSafeArea: false,
                                                isScrollControlled: true,
                                                context: context,
                                                builder: (context) => Stack(
                                                  clipBehavior: Clip.none,
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                                                      child: Container(
                                                        height: MediaQuery.of(context).size.height * 0.6,
                                                        width: double.infinity,
                                                        alignment: Alignment.center,
                                                        child: Padding(
                                                          padding: const EdgeInsets.all(20),
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Text('Card Holders Name', style: TextStyles.titleStyle(fontSize: 25)),
                                                              Gap(15),
                                                              CustomeTextField(
                                                                hintText: 'Adolphus Chris',
                                                                hintStyle: TextStyles.titleStyle(fontSize: 20, color: Color(0xFFC2BDBD)),
                                                              ),
                                                              Gap(24),
                                                              Text('Card Number', style: TextStyles.titleStyle(fontSize: 25)),
                                                              Gap(15),
                                                              CustomeTextField(
                                                                hintText: '1234 5678 9012 1314',
                                                                hintStyle: TextStyles.titleStyle(fontSize: 20, color: Color(0xFFC2BDBD)),
                                                              ),
                                                              Gap(24),
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                children: [
                                                                  Column(
                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                    children: [
                                                                      Text('Date', style: TextStyles.titleStyle(fontSize: 25)),
                                                                      Gap(15),
                                                                      SizedBox(
                                                                        width: 140,
                                                                        child: CustomeTextField(
                                                                          textAlign: TextAlign.center,
                                                                          hintText: '10/30',
                                                                          hintStyle: TextStyles.titleStyle(fontSize: 20, color: Color(0xFFC2BDBD)),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Column(
                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                    children: [
                                                                      Text('CCV', style: TextStyles.titleStyle(fontSize: 25)),
                                                                      Gap(15),
                                                                      SizedBox(
                                                                        width: 140,
                                                                        child: CustomeTextField(
                                                                          textAlign: TextAlign.center,
                                                                          hintText: '123',
                                                                          hintStyle: TextStyles.titleStyle(fontSize: 20, color: Color(0xFFC2BDBD)),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      top: -100,
                                                      right: 0,
                                                      left: 0,
                                                      child: Center(
                                                        child: InkWell(
                                                          onTap: () {
                                                            Navigator.pop(context);
                                                          },
                                                          child: CircleAvatar(
                                                            radius: 30,
                                                            backgroundColor: AppColors.whiteColor,
                                                            child: Icon(Icons.close, color: AppColors.darkColor, size: 30),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      top: 450,
                                                      right: 0,
                                                      left: 0,
                                                      child: Container(
                                                        height: 100,
                                                        width: double.infinity,
                                                        decoration: BoxDecoration(
                                                          color: AppColors.primaryColor,
                                                          borderRadius: BorderRadius.only(topLeft: Radius.circular(35), topRight: Radius.circular(35)),
                                                        ),
                                                        child: Center(
                                                          child: MainButton(
                                                            title: 'Complete Order',
                                                            onPressed: () {
                                                              pushAndRemoveUntil(context, CompleteOrder());
                                                            },
                                                            colorText: AppColors.primaryColor,
                                                            color: Color(0xFFFFFFFF),
                                                            width: 180,
                                                            height: 50,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                            color: AppColors.whiteColor,
                                            side: BorderSide(color: AppColors.primaryColor),
                                            colorText: AppColors.primaryColor,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: -100,
                            right: 0,
                            left: 0,
                            child: Center(
                              child: InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: AppColors.whiteColor,
                                  child: Icon(Icons.close, color: AppColors.darkColor, size: 30),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
