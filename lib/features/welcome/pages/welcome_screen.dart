import 'package:flutter/material.dart';
import 'package:fruit_hub/core/constants/app_images.dart';
import 'package:fruit_hub/core/functions/navigator.dart';
import 'package:fruit_hub/core/text/app_text.dart';
import 'package:fruit_hub/core/utils/color/colors.dart';
import 'package:fruit_hub/core/widgets/main_button.dart';
import 'package:fruit_hub/features/home/pages/home_screen.dart';
import 'package:gap/gap.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 469,
            decoration: BoxDecoration(color: AppColors.primaryColor),
            child: Image.asset(AppImages.basket),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 65),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Get The Freshest Fruit Salad Combo', style: TextStyles.titleStyle(fontSize: 24)),
                Gap(8),
                Text('We deliver the best and freshest fruit salad in\ntown. Order for a combo today!!!', style: TextStyles.subtitleStyle(fontSize: 20, color: AppColors.subTitleColor)),
                Gap(58),
                MainButton(
                  title: 'Let’s Continue',
                  onPressed: () {
                    pushAndRemoveUntil(context, HomeScreen());
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
