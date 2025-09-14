import 'package:flutter/material.dart';
import 'package:fruit_hub/core/constants/app_images.dart';
import 'package:fruit_hub/core/functions/navigator.dart';
import 'package:fruit_hub/core/text/app_text.dart';
import 'package:fruit_hub/core/utils/color/colors.dart';
import 'package:fruit_hub/core/widgets/custome_divider.dart';
import 'package:gap/gap.dart';

class TrakeScreen extends StatelessWidget {
  const TrakeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                    Text('Delivery Status', style: TextStyles.titleStyle(fontSize: 24, color: AppColors.whiteColor)),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(color: AppColors.pinkColor, borderRadius: BorderRadius.circular(10)),
                      child: Center(child: Image.asset(AppImages.customerOrder, width: 60, height: 60)),
                    ),
                    Gap(10),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Order Taken', style: TextStyles.titleStyle()),
                          Icon(Icons.check_circle_rounded, size: 25, color: Color(0xFF4CD964)),
                        ],
                      ),
                    ),
                  ],
                ),
                Gap(5),
                CustomeDivider(),
                Row(
                  children: [
                    Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(color: AppColors.greyColor, borderRadius: BorderRadius.circular(10)),
                      child: Center(child: Image.asset(AppImages.order, width: 60, height: 60)),
                    ),
                    Gap(10),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Order Is Being Prepared', style: TextStyles.titleStyle()),
                          Icon(Icons.check_circle_rounded, size: 25, color: Color(0xFF4CD964)),
                        ],
                      ),
                    ),
                  ],
                ),
                Gap(5),
                CustomeDivider(),
                Row(
                  children: [
                    Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(color: AppColors.pinkColor, borderRadius: BorderRadius.circular(10)),
                      child: Center(child: Image.asset(AppImages.delivery, width: 60, height: 60)),
                    ),
                    Gap(10),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Order Is Being Delivered', style: TextStyles.titleStyle()),
                          IconButton(
                            style: IconButton.styleFrom(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                              backgroundColor: AppColors.primaryColor,
                            ),
                            onPressed: () {},
                            icon: Icon(Icons.call, size: 25, color: AppColors.whiteColor),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Gap(5),
                CustomeDivider(),
                Column(
                  children: [Image.asset(AppImages.location, fit: BoxFit.cover, width: double.infinity)],
                ),
                Gap(5),
                CustomeDivider(),
                Row(
                  children: [
                    Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(color: AppColors.pinkColor, borderRadius: BorderRadius.circular(10)),
                      child: Center(child: Icon(Icons.check_circle_rounded, size: 40, color: Color(0xFF4CD964))),
                    ),
                    Gap(10),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Order Received', style: TextStyles.titleStyle()),
                          Icon(Icons.more_horiz, size: 30, color: AppColors.primaryColor),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
