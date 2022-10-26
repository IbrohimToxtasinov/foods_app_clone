import 'package:flutter/material.dart';
import 'package:foodsapp/models/foods_models.dart';
import 'package:foodsapp/models/product.dart';
import 'package:foodsapp/screens/select_page.dart';
import 'package:foodsapp/utils/colors.dart';
import 'package:foodsapp/utils/images.dart';
import 'package:foodsapp/widgets/option_widget.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  State<HomePage1> createState() => _HomePage1State();
}

List<Widget> pages = [
  GridView.builder(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 40,
      mainAxisSpacing: 40,
      childAspectRatio: 0.9,
    ),
    itemCount: 4,
    itemBuilder: (BuildContext context, index) {
      return InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => SelectPage(getData: ProductModel.gamburgers[index])));
        },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(  
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Container(
                width: 150,
                height: 95,
                child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: -40,
                    child: 
                    Container(
                      width: 150,
                      height: 150,
                      child: Image.asset(ProductModel.gamburgers[index].image),
                    ),
                  ),
                ],
              ),
              ),
              const SizedBox(height: 10,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(ProductModel.gamburgers[index].name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                  Text(ProductModel.gamburgers[index].qoshimcha, style: const TextStyle(fontWeight: FontWeight.w300, fontSize: 12),),
                ],
              ),
              const SizedBox(height: 15,),
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(ProductModel.gamburgers[index].price, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                    InkWell(
                      onTap: () {
                        
                      },
                      child: Icon(ProductModel.gamburgers[index].isLiked ? Icons.favorite_outlined : Icons.favorite_border),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }
  ),
  GridView.builder(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 40,
      mainAxisSpacing: 40,
      childAspectRatio: 0.9,
    ),
    itemCount: 4,
    itemBuilder: (BuildContext context, index) {
      return InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => SelectPage(getData: ProductModel.chickenFoods[index])));
        },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(  
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Container(
                width: 150,
                height: 95,
                child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: -40,
                    child: 
                    Container(
                      width: 150,
                      height: 150,
                      child: Image.asset(ProductModel.chickenFoods[index].image),
                    ),
                  ),
                ],
              ),
              ),
              const SizedBox(height: 10,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(ProductModel.chickenFoods[index].name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                  Text(ProductModel.chickenFoods[index].qoshimcha, style: const TextStyle(fontWeight: FontWeight.w300, fontSize: 12),),
                ],
              ),
              const SizedBox(height: 15,),
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(ProductModel.chickenFoods[index].price, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                    InkWell(
                      onTap: () {
                      },
                      child: Icon(ProductModel.chickenFoods[index].isLiked ? Icons.favorite_outlined : Icons.favorite_border),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }
  ),
  GridView.builder(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 40,
      mainAxisSpacing: 40,
      childAspectRatio: 0.9,
    ),
    itemCount: 4,
    itemBuilder: (BuildContext context, index) {
      return InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => SelectPage(getData: ProductModel.salads[index])));
        },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(  
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Container(
                width: 150,
                height: 95,
                child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: -40,
                    child: 
                    Container(
                      width: 150,
                      height: 150,
                      child: Image.asset(ProductModel.salads[index].image),
                    ),
                  ),
                ],
              ),
              ),
              const SizedBox(height: 10,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(ProductModel.salads[index].name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                  Text(ProductModel.salads[index].qoshimcha, style: const TextStyle(fontWeight: FontWeight.w300, fontSize: 12),),
                ],
              ),
              const SizedBox(height: 15,),
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(ProductModel.salads[index].price, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                    InkWell(
                      onTap: () {
                      },
                      child: Icon(ProductModel.salads[index].isLiked ? Icons.favorite_outlined : Icons.favorite_border),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }
  ),
  GridView.builder(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 40,
      mainAxisSpacing: 40,
      childAspectRatio: 0.9,
    ),
    itemCount: 4,
    itemBuilder: (BuildContext context, index) {
      return InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => SelectPage(getData: ProductModel.iceCream[index])));
        },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(  
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Container(
                width: 150,
                height: 95,
                child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: -40,
                    child: 
                    Container(
                      width: 150,
                      height: 150,
                      child: Image.asset(ProductModel.iceCream[index].image),
                    ),
                  ),
                ],
              ),
              ),
              const SizedBox(height: 10,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(ProductModel.iceCream[index].name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                  Text(ProductModel.iceCream[index].qoshimcha, style: const TextStyle(fontWeight: FontWeight.w300, fontSize: 12),),
                ],
              ),
              const SizedBox(height: 15,),
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(ProductModel.iceCream[index].price, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                    InkWell(
                      onTap: () {
                      },
                      child: Icon(ProductModel.iceCream[index].isLiked ? Icons.favorite_outlined : Icons.favorite_border),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }
  ),
];

class _HomePage1State extends State<HomePage1> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Image.asset(MyImages.image_background, fit: BoxFit.cover,)
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            color: MyColors.cFFFFFF.withOpacity(0.1),
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Hi Ibrohim", style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18,)),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      width: 60,
                      height: 60,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.redAccent,
                        image: DecorationImage(
                          image: NetworkImage("https://source.unsplash.com/random/10"), fit: BoxFit.cover),
                      ),
                    ),
                  ],
                ),
                const Text("What dou you want", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),),
                Row(
                  children: [
                    const Text("for dinner", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500)),
                    const SizedBox(width: 10,),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.redAccent,
                        image: DecorationImage(image: AssetImage(MyImages.image_food_icon), fit: BoxFit.cover),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                SizedBox(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [Row(
                      children: [
                        ChooseButton(
                          image: FoodModel.foods[0].imageName,
                          isSelected: selectedIndex == 0,
                          onTap: () {
                            setState(() {
                              selectedIndex = 0;
                            });
                          },
                        ),
                        ChooseButton(
                          image: FoodModel.foods[1].imageName,
                          isSelected: selectedIndex == 1,
                          onTap: () {
                            setState(() {
                              selectedIndex = 1;
                            });
                          },
                        ),
                        ChooseButton(
                          image: FoodModel.foods[2].imageName,
                          isSelected: selectedIndex == 2,
                          onTap: () {
                            setState(() {
                              selectedIndex = 2;
                            });
                          },
                        ),
                        ChooseButton(
                          image: FoodModel.foods[3].imageName,
                          isSelected: selectedIndex == 3,
                          onTap: () {
                            setState(() {
                              selectedIndex = 3;
                            });
                          },
                        ),
                      ],
                    ),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                const Text("Recomended", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),),
                const SizedBox( height: 40),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  child: SizedBox( 
                    height: 430,
                    width: double.infinity,
                    child: pages[selectedIndex],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}