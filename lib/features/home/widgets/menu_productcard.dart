import 'package:flutter/material.dart';
import 'package:fruit_hub/core/text/app_text.dart';
import 'package:fruit_hub/core/utils/color/colors.dart';
import 'package:fruit_hub/features/home/models/menu_product.dart';
import 'package:intl/intl.dart';

class MenuProductCard extends StatefulWidget {
  MenuProductCard({super.key, required this.models, required this.index});

  final MenuProduct models;
  final int index;

  @override
  State<MenuProductCard> createState() => _MenuProductCardState();
}

class _MenuProductCardState extends State<MenuProductCard> {
  final List<Color> color = [AppColors.greyColor, AppColors.pinkColor];

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 173,
        decoration: BoxDecoration(color: color[widget.index % color.length], borderRadius: BorderRadius.circular(10)),
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
              Expanded(child: Center(child: Image.asset(widget.models.image, width: 80, height: 80))),
              Text(widget.models.name, style: TextStyles.titleStyle(fontSize: 16)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('\$ ${NumberFormat('#,###').format(widget.models.price)}', style: TextStyles.titleStyle(color: AppColors.textColor, fontSize: 20)),

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
