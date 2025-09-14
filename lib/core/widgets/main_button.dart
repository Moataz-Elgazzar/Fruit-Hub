import 'package:flutter/material.dart';
import 'package:fruit_hub/core/text/app_text.dart';
import 'package:fruit_hub/core/utils/color/colors.dart';

class MainButton extends StatelessWidget {
  const MainButton({super.key, this.height = 56, this.width = double.infinity, required this.title, required this.onPressed, this.color = AppColors.primaryColor, this.side, this.colorText = AppColors.whiteColor});

  final double height;
  final double width;
  final String title;
  final Function()? onPressed;
  final Color color;
  final BorderSide? side;
  final Color colorText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          side: side,
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(10)),
        ),
        onPressed: onPressed,
        child: Text(title, style: TextStyles.smallStyle(color: colorText, fontSize: 20)),
      ),
    );
  }
}
