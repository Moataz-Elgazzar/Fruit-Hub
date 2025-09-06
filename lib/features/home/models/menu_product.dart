import 'package:fruit_hub/core/constants/app_images.dart';

class MenuProduct {
  final int id;
  final String name;
  final String image;
  double price;

  MenuProduct({required this.id, required this.name, required this.image, required this.price});
}

List<MenuProduct> products = [MenuProduct(id: 1, name: 'Quinoa fruit salad', image: AppImages.quinoa, price: 10), MenuProduct(id: 2, name: 'Tropical fruit salad', image: AppImages.tropical, price: 20), MenuProduct(id: 3, name: 'melon fruit salad', image: AppImages.melonFruit, price: 8)];
