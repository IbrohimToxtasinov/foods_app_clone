import 'package:foodsapp/utils/images.dart';

class ProductModel {
  String image;
  String name;
  String qoshimcha;
  String price;
  bool isLiked;
  int qancha;

  ProductModel({
    required this.image,
    required this.name,
    required this.qoshimcha,
    required this.price,
    this.qancha = 0,
    this.isLiked = false,
  });

  static final gamburgers = [
    ProductModel(
      image: MyImages.image_gamburger1,
      name: "Doublegurger", 
      qoshimcha: "two juicy beef patties",
      price: "\$10",
    ),
    ProductModel(
      image: MyImages.image_gamburger2,
      name: "Hamburger", 
      qoshimcha: "juicy beef patty",
      price: "\$8",
    ),
    ProductModel(
      image: MyImages.image_gamburger3,
      name: "Doublechesburger", 
      qoshimcha: "two juicy beef patties",
      price: "\$15",
    ),
    ProductModel(
      image: MyImages.image_gamburger4,
      name: "Chesburger",
      qoshimcha: "juicy beef patty",
      price: "\$12",
    ),
  ];

  static final chickenFoods = [
    ProductModel(
      image: MyImages.image_chicken_foods1,
      name: "Cajun", 
      qoshimcha: "two juicy beef patties",
      price: "\$11",
    ),
    ProductModel(
      image: MyImages.image_chicken_foods2,
      name: "Combo", 
      qoshimcha: "juicy beef patty",
      price: "\$10",
    ),
    ProductModel(
      image: MyImages.image_chicken_foods3,
      name: "Garlic", 
      qoshimcha: "two juicy beef patties",
      price: "\$12",
    ),
    ProductModel(
      image: MyImages.image_chicken_foods4,
      name: "Bulgogi",
      qoshimcha: "juicy beef patty",
      price: "\$10",
    ),
  ];

  static final iceCream = [
    ProductModel(
      image: MyImages.image_ice_cream1,
      name: "Cornet", 
      qoshimcha: "chocolate and bread",
      price: "\$3",
    ),
    ProductModel(
      image: MyImages.image_ice_cream2,
      name: "Corfe", 
      qoshimcha: "raspberry and grapes,",
      price: "\$5",
    ),
    ProductModel(
      image: MyImages.image_ice_cream3,
      name: "Ferco", 
      qoshimcha: "raspberryne and bread",
      price: "\$4",
    ),
    ProductModel(
      image: MyImages.image_ice_cream4,
      name: "Bizz",
      qoshimcha: "raspberry and bread",
      price: "\$4",
    ),
  ];

  static final salads = [
    ProductModel(
      image: MyImages.image_salad1,
      name: "Fruit Salad", 
      qoshimcha: "",
      price: "\$2",
    ),
    ProductModel(
      image: MyImages.image_salad2,
      name: "Chicken Salad", 
      qoshimcha: "Fresh Romainie Lettuce",
      price: "\$5",
    ),
    ProductModel(
      image: MyImages.image_salad3,
      name: "Club Salad", 
      qoshimcha: "Fresh Romainie Lettuce",
      price: "\$3",
    ),
    ProductModel(
      image: MyImages.image_salad4,
      name: "Italian Salad",
      qoshimcha: "Fresh Romainie Lettuce",
      price: "\$3",
    ),
  ];

}