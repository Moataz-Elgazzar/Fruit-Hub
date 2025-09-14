import 'package:flutter/material.dart';
import 'package:fruit_hub/core/constants/app_images.dart';
import 'package:fruit_hub/core/functions/navigator.dart';
import 'package:fruit_hub/core/text/app_text.dart';
import 'package:fruit_hub/core/utils/color/colors.dart';
import 'package:fruit_hub/core/widgets/main_button.dart';
import 'package:fruit_hub/features/home/pages/home_screen.dart';
import 'package:gap/gap.dart';

class CompleteOrder extends StatelessWidget {
  const CompleteOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset(AppImages.done, width: 250, height: 250, fit: BoxFit.contain)),
          Gap(56),
          Text('Congratulations!!!', style: TextStyles.titleStyle(fontSize: 32)),
          Gap(16),
          Text('Your order have been taken and\nis being attended to', style: TextStyles.subtitleStyle(fontSize: 20), textAlign: TextAlign.center),
          Gap(56),
          MainButton(height: 70, width: 250, title: 'Track order', onPressed: () {}),
          Gap(48),
          MainButton(
            height: 70,
            width: 250,
            title: 'Continue Shopping',
            onPressed: () {
              pushAndRemoveUntil(context, HomeScreen());
            },
            colorText: AppColors.primaryColor,
            color: AppColors.whiteColor,
            side: BorderSide(color: AppColors.primaryColor),
          ),
        ],
      ),
    );
  }
}
