import 'package:flutter/material.dart';
import 'package:fruit_hub/core/functions/navigator.dart';
import 'package:fruit_hub/core/text/app_text.dart';
import 'package:fruit_hub/core/utils/color/colors.dart';
import 'package:fruit_hub/features/details/pages/details_screen.dart';
import 'package:fruit_hub/features/home/models/recommended_product.dart';
import 'package:intl/intl.dart';

class RecommendedCard extends StatefulWidget {
  const RecommendedCard({super.key, required this.model});
  final RecommendedProduct model;

  @override
  State<RecommendedCard> createState() => _RecommendedCardState();
}

class _RecommendedCardState extends State<RecommendedCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        pushTo(context, DetailsScreen(model: widget.model));
      },
      child: Container(
        width: 173,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(color: Color(0xFF202020).withValues(alpha: 0.2), spreadRadius: -4, blurRadius: 10, offset: Offset(0, 8))],
          border: Border.all(color: Color(0xFF202020).withValues(alpha: 0.1)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 16, left: 20, bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            spacing: 10,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite_border, color: AppColors.primaryColor),
                ),
              ),
              Expanded(child: Center(child: Image.asset(widget.model.image, width: 80, height: 80))),
              Text(widget.model.name, style: TextStyles.titleStyle(fontSize: 16)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('\$ ${NumberFormat('#,###').format(widget.model.price)}', style: TextStyles.titleStyle(color: AppColors.textColor, fontSize: 20)),

                  IconButton(
                    style: IconButton.styleFrom(padding: EdgeInsets.all(4), backgroundColor: AppColors.pinkColor, shape: CircleBorder(), iconSize: 22),
                    onPressed: () {},
                    icon: Icon(Icons.add, color: AppColors.primaryColor),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
