import 'package:flutter/material.dart';

class ChooseButton extends StatefulWidget {
  final String image;
  bool isSelected;
  VoidCallback onTap;

  ChooseButton({super.key , required this.image, required this.isSelected, required this.onTap});

  @override
  State<ChooseButton> createState() => _ChooseButtonState();
}

class _ChooseButtonState extends State<ChooseButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 15),
            width: 92,
            height: 50,
            decoration: BoxDecoration(
              color: widget.isSelected ?Colors.amber : Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(widget.image),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}