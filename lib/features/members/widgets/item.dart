import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tokuapp/core/app_text_style.dart';
import 'package:tokuapp/features/members/models/item_model.dart';

class Item extends StatelessWidget {
  const Item({
    super.key,
    required this.numberModel,
    required this.containerColor,
  });
  final ItemModel numberModel;
  final Color containerColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: containerColor,
      child: Row(
        children: [
          Container(
            height: 100,
            color: Color(0xffFFF4D9),
            child: Image.asset(numberModel.imagePath, fit: BoxFit.cover),
          ),
          SizedBox(width: 16),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                numberModel.jpName,
                style: AppTextStyle.heading.copyWith(fontSize: 18),
              ),
              Text(
                numberModel.enName,
                style: AppTextStyle.heading.copyWith(fontSize: 18),
              ),
            ],
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
              onPressed: () {
                numberModel.playSound();
              },
              icon: Icon(Icons.play_arrow, size: 24, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
