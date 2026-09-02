import 'package:flutter/material.dart';
import 'package:tokuapp/features/members/models/item_model.dart';
import 'package:tokuapp/features/widgets/item_info.dart';

class Item extends StatelessWidget {
  const Item({
    super.key,
    required this.itemModel,
    required this.containerColor,
  });
  final ItemModel itemModel;
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
            child: Image.asset(itemModel.imagePath!, fit: BoxFit.cover),
          ),
          SizedBox(width: 16),
          Expanded(child: ItemInfo(itemModel: itemModel)),
        ],
      ),
    );
  }
}
