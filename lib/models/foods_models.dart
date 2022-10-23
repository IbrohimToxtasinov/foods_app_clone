import 'package:foodsapp/utils/images.dart';

class FoodModel {
  String imageName;
  bool isClicked;


  FoodModel({required this.imageName, required this.isClicked});

  static final foods = [
    FoodModel(
      imageName: MyImages.image_gamburger,
      isClicked: false,
    ),
    FoodModel(
      imageName: MyImages.image_chicken_meat,
      isClicked: false,
    ),
    FoodModel(
      imageName: MyImages.image_salad,
      isClicked: false,
      ),
    FoodModel(
      imageName: MyImages.image_ice_cream,
      isClicked: false,
    ),
  ];
}
