import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/color/colors.dart';
import 'package:fruit_hub/features/home/models/menu_product.dart';
import 'package:fruit_hub/features/home/widgets/menu_productCard.dart';

class ProductList extends StatelessWidget {
  ProductList({super.key, required this.products});

  final List<MenuProduct> products;

  final List<Color> color = [AppColors.greyColor, AppColors.pinkColor];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 248,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return MenuProductCard(models: products[index], index: index);
        },
        separatorBuilder: (context, index) {
          return SizedBox(width: 10);
        },
        itemCount: products.length,
      ),
    );
  }
}
