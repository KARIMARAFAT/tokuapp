import 'package:flutter/material.dart';
import 'package:tokuapp/core/app_text_style.dart';
import 'package:tokuapp/features/members/models/item_model.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, required this.itemModel});
  final ItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(6),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemModel.jpName,
                style: AppTextStyle.heading.copyWith(fontSize: 18),
              ),
              Text(
                itemModel.enName,
                style: AppTextStyle.heading.copyWith(fontSize: 18),
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: IconButton(
            onPressed: () {
              itemModel.playSound();
            },
            icon: Icon(Icons.play_arrow, size: 24, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
