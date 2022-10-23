import 'package:flutter/material.dart';
import 'package:foodsapp/models/product.dart';
import 'package:foodsapp/utils/colors.dart';
import 'package:foodsapp/utils/images.dart';

class SelectPage extends StatefulWidget {
  final ProductModel? getData;
  const SelectPage({super.key, this.getData});

  @override
  State<SelectPage> createState() => _SelectPageState();
}

class _SelectPageState extends State<SelectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Image.asset(MyImages.image_background, fit: BoxFit.cover,)
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            color: MyColors.cFFFFFF.withOpacity(0.2),
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 50, bottom: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Center(
                          child: Icon(Icons.arrow_back_ios_outlined, size: 30),
                        ),
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: const Center(child: Icon(Icons.favorite_rounded, size: 25)),
                    ),
                  ],
                ),
                Container(
                  child: Image.asset(widget.getData?.image ?? "", height: 400, width: 600,)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.getData?.name ?? "" , style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                        const SizedBox(height: 1,),
                        Row(
                          children: const [
                            Icon(Icons.star_outlined, color: Colors.amber, size: 30,),
                            Icon(Icons.star_outlined, color: Colors.amber, size: 30,),
                            Icon(Icons.star_outlined, color: Colors.amber, size: 30,),
                            Icon(Icons.star_outlined, color: Colors.amber, size: 30,),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.getData?.price ?? "", style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: '🔥 ',
                                style: TextStyle(fontSize: 20),
                              ),
                              TextSpan(
                                text: '341 calories',
                                style: TextStyle(fontSize: 14, color: Colors.black),
                              ),                   
                              TextSpan(
                                text: ' 🛵 ',
                                style: TextStyle(fontSize: 20),
                              ),
                              TextSpan(
                                text: '20-25 min ',
                                style: TextStyle(fontSize: 14, color: Colors.black),
                              ),
                            ]
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 130,
                      height: 40,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.amber,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(onPressed: () {
                            setState(() {
                              if(widget.getData!.qancha > 0){
                                  widget.getData?.qancha -= 1;
                              }
                            });
                          }, icon: const Icon(Icons.remove_circle_outline)),
                          Text("${widget.getData?.qancha}", style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                          IconButton(onPressed: () {
                            setState(() {
                              if(widget.getData!.qancha >= 0){
                                  widget.getData?.qancha += 1 ;
                              }
                            });
                          }, icon: const Icon(Icons.add_circle_outline_sharp)),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                const Text("Details", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
                const SizedBox(height: 10,),
                Text(widget.getData?.qoshimcha ?? "", style: const TextStyle(fontSize: 14),),
                Padding(
                  padding: const EdgeInsets.only(top: 60, left: 40, right: 40),
                  child: Container(
                    height: 50,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.amber,
                    ),
                    child: const Center(
                      child: Text("Add to Cart", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
                    ),
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