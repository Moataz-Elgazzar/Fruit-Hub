import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/color/colors.dart';

class CustomeDivider extends StatelessWidget {
  const CustomeDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(color: AppColors.primaryColor),
            width: 1,
            height: 10,
            margin: EdgeInsets.only(bottom: 4),
          ),
          Container(
            decoration: BoxDecoration(color: AppColors.primaryColor),
            width: 1,
            height: 10,
            margin: EdgeInsets.only(bottom: 4),
          ),
          Container(
            decoration: BoxDecoration(color: AppColors.primaryColor),
            width: 1,
            height: 10,
            margin: EdgeInsets.only(bottom: 4),
          ),
        ],
      ),
    );
  }
}
