import 'package:flutter/material.dart';

import 'package:fruit_hub/core/text/app_text.dart';
import 'package:fruit_hub/core/utils/color/colors.dart';


class MainButton extends StatelessWidget {
  const MainButton({
    super.key,  this.height = 56,  this.width = double.infinity, required this.title, required this.onPressed,
  });

  final double height;
  final double width;
  final String title;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(10)),
        ),
        onPressed: onPressed,
        child: Text(title, style: TextStyles.smallStyle(color: AppColors.whiteColor, fontSize: 20)),
      ),
    );
  }
}
