import 'package:fruit_hub/core/constants/app_images.dart';

class RecommendedProduct {
  final int id;
  final String name;
  final String image;
  double price;
  String? describtion;

  RecommendedProduct({required this.id, required this.name, required this.image, required this.price, this.describtion});
}

List<RecommendedProduct> product = [RecommendedProduct(id: 1, name: 'Honey lime combo', image: AppImages.honeyLime, price: 20, describtion: 'Honey, Lime, Mint, Fresh berries, Yogurt'), RecommendedProduct(id: 2, name: 'Berry mango combo', image: AppImages.berry, price: 80, describtion: 'Strawberries, Blueberries, Mango, Orange juice, Honey'), RecommendedProduct(id: 3, name: 'Quinoa fruit salad', image: AppImages.quinoa, price: 10, describtion: 'Red Quinoa, Lime, Honey, Blueberries, Strawberries,\nMango, Fresh mint.')];
